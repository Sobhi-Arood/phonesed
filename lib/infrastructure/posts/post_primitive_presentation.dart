import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/post.dart';

part 'post_primitive_presentation.freezed.dart';

@freezed
abstract class PostPrimitive implements _$PostPrimitive {
  const PostPrimitive._();

  const factory PostPrimitive({
    @required UniqueId postId,
    @required String postTitle,
    @required String postImageUrl,
    @required DateTime postPublishedDate,
    @required int postPrice,
    @required String postUserId,
    @required String postUsername,
    @required String postCity,
    @required String conversationId,
  }) = _PostPrimitive;

  factory PostPrimitive.empty() => PostPrimitive(
        postId: UniqueId(),
        postTitle: '',
        postImageUrl: '',
        postPublishedDate: DateTime.now(),
        postPrice: 0,
        postUserId: '',
        postUsername: '',
        postCity: '',
        conversationId: 'con',
      );

  factory PostPrimitive.fromDomain(Post post) {
    return PostPrimitive(
      postId: post.id,
      postTitle: post.title.getOrCrash(),
      postImageUrl: post.images.getOrCrash()[0],
      postPublishedDate: post.publishedDate.getOrCrash(),
      postPrice: post.price.getOrCrash(),
      postUserId: post.userId.getOrCrash(),
      postUsername: post.userName.getOrCrash(),
      postCity: post.city.getOrCrash(),
      conversationId: 'con',
    );
  }

  // Post toDomain() {
  //   return Post()
  // }
}
