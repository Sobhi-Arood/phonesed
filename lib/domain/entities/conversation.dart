import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/chats/value_objects.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

part 'conversation.freezed.dart';

@freezed
abstract class Conversation implements _$Conversation {
  const Conversation._();
  const factory Conversation({
    @required UniqueId id,
    @required UniqueId postId,
    @required PostTitle postTitle,
    @required PostImageUrl postImage,
    @required PostPublishedDate publishedDate,
    @required PostPrice postPrice,
    @required UniqueId postUserId,
    @required UserName postUsername,
    @required PostCity postCity,
    @required MessageContent recentMessageContent,
    @required PostPublishedDate recentMessageDate,
    @required UserName displayUserName,
  }) = _Conversation;

  factory Conversation.empty() => Conversation(
        id: UniqueId(),
        postId: UniqueId(),
        postTitle: PostTitle(''),
        postImage: PostImageUrl(''),
        publishedDate: PostPublishedDate(DateTime.now()),
        postPrice: PostPrice(0),
        postUserId: UniqueId(),
        postUsername: UserName(''),
        postCity: PostCity(''),
        recentMessageContent: MessageContent(''),
        recentMessageDate: PostPublishedDate(DateTime.now()),
        displayUserName: UserName(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return postId.failureOrUnit
        .andThen(postUserId.failureOrUnit)
        .andThen(postUsername.failureOrUnit)
        .andThen(recentMessageContent.failureOrUnit)
        .andThen(recentMessageDate.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
