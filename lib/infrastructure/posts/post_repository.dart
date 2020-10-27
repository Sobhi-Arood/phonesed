import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/posts/i_post_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/infrastructure/core/firestore_helpers.dart';
import 'package:phonesed/infrastructure/posts/post_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firestore;

  PostRepository(this._firestore);
  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchAll() async* {
    final postDoc = _firestore.collection('Posts');
    yield* postDoc
        .orderBy('publishedDate', descending: true)
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<Post>>(
              snapshot.docs
                  .map((doc) => PostDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PostFailure, Unit>> create(Post post) async {
    try {
      final userId = await _firestore.userDocument();
      final postDto = PostDto.fromDomain(post, userId.id);

      await _firestore
          .collection('Posts')
          .doc(postDto.id)
          .set(postDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> delete(Post post) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<PostFailure, Unit>> update(Post post) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
