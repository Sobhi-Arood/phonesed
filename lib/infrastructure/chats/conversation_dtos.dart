import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/chats/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/conversation.dart';
import 'package:phonesed/domain/posts/value_objects.dart';
import 'package:phonesed/infrastructure/core/json_converters.dart';

part 'conversation_dtos.freezed.dart';
part 'conversation_dtos.g.dart';

@freezed
abstract class ConversationDto implements _$ConversationDto {
  const ConversationDto._();
  const factory ConversationDto({
    @required String id,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
    @required String postId,
    @required String postTitle,
    @required String postImageUrl,
    @required DateTime postPublishedDate,
    @required int postPrice,
    @required String postUserId,
    @required String postUsername,
    @required String postCity,
    // @required MessageDto messageDto,
    @required String recentMessageContent,
    @required DateTime recentMessageDate,
    @required bool recentMessageDidRead,
    @required String displayUserName,
  }) = _ConversationDto;

  // factory ConversationDto.fromDomain(Conversation conversation) {
  //   return ConversationDto(
  //     id: conversation.id.getOrCrash(),
  //     postId: conversation.postId.getOrCrash(),
  //     postTitle: conversation.postTitle.getOrCrash(),
  //     postImageUrl: conversation.postImage,
  //     postPublishedDate: conversation.publishedDate.getOrCrash(),
  //     postPrice: conversation.postPrice.getOrCrash(),

  //   );
  // }

  Conversation toDomain() {
    return Conversation(
      id: UniqueId.fromUniqueString(id),
      postId: UniqueId.fromUniqueString(postId),
      postTitle: PostTitle(postTitle),
      postImage: PostImageUrl(postImageUrl),
      publishedDate: PostPublishedDate(postPublishedDate),
      postPrice: PostPrice(postPrice),
      postUserId: UniqueId.fromUniqueString(postUserId),
      postUsername: UserName(postUsername),
      postCity: PostCity(postCity),
      recentMessageContent: MessageContent(recentMessageContent),
      recentMessageDate: PostPublishedDate(recentMessageDate),
      recentMessageDidRead: recentMessageDidRead,
      displayUserName: UserName(displayUserName),
    );
  }

  factory ConversationDto.fromJson(Map<String, dynamic> json) =>
      _$ConversationDtoFromJson(json);

  factory ConversationDto.fromFirestore(DocumentSnapshot doc) {
    return ConversationDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
