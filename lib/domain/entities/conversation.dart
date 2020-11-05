import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/chats/value_objects.dart';
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
    @required String postImage,
    @required PostPublishedDate publishedDate,
    @required PostPrice postPrice,
    @required MessageContent recentMessageContent,
    @required PostPublishedDate recentMessageDate,
    @required UserName displayUserName,
  }) = _Conversation;
}
