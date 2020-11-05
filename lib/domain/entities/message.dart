import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/chats/value_objects.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

part 'message.freezed.dart';

@freezed
abstract class Message implements _$Message {
  const Message._();
  const factory Message({
    @required UniqueId id,
    @required UniqueId senderId,
    @required UniqueId recevierId,
    @required MessageContent content,
    @required PostPublishedDate date,
  }) = _Message;

  factory Message.empty() => Message(
      id: UniqueId(),
      senderId: UniqueId(),
      recevierId: UniqueId(),
      content: MessageContent(''),
      date: PostPublishedDate(DateTime.now()));

  Option<ValueFailure<dynamic>> get failureOption {
    return content.failureOrUnit
        .andThen(recevierId.failureOrUnit)
        .andThen(senderId.failureOrUnit)
        .fold((fail) => some(fail), (r) => none());
  }
}
