import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/chats/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/message.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

part 'message_dtos.freezed.dart';
part 'message_dtos.g.dart';

@freezed
abstract class MessageDto implements _$MessageDto {
  const MessageDto._();
  const factory MessageDto({
    @JsonKey(ignore: true) String id,
    // @required String id,
    @required String senderId,
    @required String recevierId,
    @required String content,
    @required DateTime date,
  }) = _MessageDto;

  // factory MessageDto.fromDomain(Message message) {
  //   return MessageDto(
  //       id: message.id.getOrCrash(),
  //       senderId: message.senderId.getOrCrash(),
  //       recevierId: message.recevierId.getOrCrash(),
  //       content: message.content.getOrCrash(),
  //       date: message.date.getOrCrash());
  // }

  Message toDomain() {
    return Message(
      id: UniqueId.fromUniqueString(id),
      senderId: UniqueId.fromUniqueString(senderId),
      recevierId: UniqueId.fromUniqueString(recevierId),
      content: MessageContent(content),
      date: PostPublishedDate(date),
    );
  }

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  factory MessageDto.fromFirestore(DocumentSnapshot doc) {
    return MessageDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
