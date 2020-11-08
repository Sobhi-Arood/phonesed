import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/core/errors.dart';
import 'package:phonesed/domain/entities/conversation.dart';
import 'package:phonesed/infrastructure/auth/user_dtos.dart';
import 'package:phonesed/infrastructure/chats/conversation_dtos.dart';
import 'package:phonesed/infrastructure/posts/post_primitive_presentation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:phonesed/domain/chats/i_chat_repository.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/message.dart';
import 'package:phonesed/domain/chats/message_failure.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/infrastructure/chats/message_dtos.dart';
import 'package:phonesed/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore;

  ChatRepository(this._firestore);

  @override
  Stream<Either<MessageFailure, KtList<Conversation>>>
      watchAllConversations() async* {
    try {
      final user = await _firestore.userDocument();

      yield* user
          .collection('Conversations')
          .orderBy('serverTimeStamp', descending: true)
          .snapshots()
          .map(
            (snapshot) => right<MessageFailure, KtList<Conversation>>(
              snapshot.docs.map((e) {
                // print(e.data());
                // ConversationDto.fromJson(e.data()).toDomain();
                return ConversationDto.fromJson(e.data()).toDomain();
              }).toImmutableList(),
            ),
          )
          .onErrorReturnWith((error) {
        print(error.toString());
        if (error is FirebaseException &&
            error.message.contains('permission-denied')) {
          return left(const MessageFailure.insufficientPermission());
        } else {
          return left(const MessageFailure.unexpected());
        }
      });
    } catch (e) {
      if (e is NotAuthenticatedError) {
        yield left(const MessageFailure.notLoggedIn());
      }
    }
  }

  @override
  Stream<Either<MessageFailure, KtList<Message>>> watchAllMessages(
      String conversationId) async* {
    final user = await _firestore.userDocument();
    // final userData = await user.get();
    // final conversation = userData['conversation'] as List<dynamic>;

    // conversation.forEach((element) async* {
    // await conversation.map((e) async* {
    if (conversationId.isEmpty) {
      yield left(const MessageFailure.unexpected());
    }

    yield* user
        .collection('Conversations')
        // .doc()
        .doc(conversationId)
        .collection('messages')
        .orderBy('date', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<MessageFailure, KtList<Message>>(
            snapshot.docs
                .map(
                  (doc) => MessageDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((error) {
      print(error.toString());
      if (error is FirebaseException &&
          error.message.contains('permission-denied')) {
        return left(const MessageFailure.insufficientPermission());
      } else {
        return left(const MessageFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<MessageFailure, Unit>> create(Message message,
      PostPrimitive postPrimitive, String recId, String conversationId) async {
    try {
      final user = await _firestore.userDocument();
      // final conversationId = UniqueId();
      // final messageDto = MessageDto.fromDomain(message);

      await _firestore.runTransaction((transaction) async {
        return transaction
            .get(user)
            .then((userData) => UserDto.fromFirestore(userData))
            .then((us) async {
          final messageDto = MessageDto(
            senderId: us.id,
            // recevierId: postPrimitive.postUserId,
            recevierId: recId,
            content: message.content.getOrCrash(),
            date: DateTime.now(),
          );

          // if (user.id == postPrimitive.postUserId) {
          //   return left(const MessageFailure.unableToSend());
          // }

          transaction.set(
              _firestore
                  .collection('Users')
                  // .doc(postPrimitive.postUserId)
                  .doc(recId)
                  .collection('Conversations')
                  .doc(conversationId)
                  .collection('messages')
                  .doc(messageDto.id),
              messageDto.toJson());

          transaction.set(
              _firestore
                  .collection('Users')
                  .doc(us.id)
                  .collection('Conversations')
                  .doc(conversationId)
                  .collection('messages')
                  .doc(messageDto.id),
              messageDto.toJson());

          final conversationDto = ConversationDto(
            id: conversationId,
            serverTimeStamp: FieldValue.serverTimestamp(),
            postId: postPrimitive.postId.getOrCrash(),
            postTitle: postPrimitive.postTitle,
            postImageUrl: postPrimitive.postImageUrl,
            postPublishedDate: postPrimitive.postPublishedDate,
            postPrice: postPrimitive.postPrice,
            postUserId: postPrimitive.postUserId,
            postUsername: postPrimitive.postUsername,
            postCity: postPrimitive.postCity,
            recentMessageContent: message.content.getOrCrash(),
            recentMessageDate: message.date.getOrCrash(),
            displayUserName: '',
          );

          transaction.set(
            _firestore
                .collection('Users')
                // .doc(postPrimitive.postUserId)
                .doc(recId)
                .collection('Conversations')
                .doc(conversationId),
            conversationDto.copyWith(displayUserName: us.name).toJson(),
          );

          transaction.set(
            _firestore
                .collection('Users')
                .doc(us.id)
                .collection('Conversations')
                .doc(conversationId),
            conversationDto
                .copyWith(displayUserName: postPrimitive.postUsername)
                .toJson(),
          );
        });
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const MessageFailure.insufficientPermission());
      } else {
        return left(const MessageFailure.unableToSend());
      }
    } catch (_) {
      return left(const MessageFailure.unexpected());
    }
  }
}
