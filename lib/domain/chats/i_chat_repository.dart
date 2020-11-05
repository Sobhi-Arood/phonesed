import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/chats/message_failure.dart';
import 'package:phonesed/domain/entities/conversation.dart';
import 'package:phonesed/domain/entities/message.dart';
import 'package:phonesed/domain/entities/post.dart';

abstract class IChatRepository {
  Stream<Either<MessageFailure, KtList<Conversation>>> watchAllConversations();
  Stream<Either<MessageFailure, KtList<Message>>> watchAllMessages();
  Future<Either<MessageFailure, Unit>> create(Message message, Post post);
}
