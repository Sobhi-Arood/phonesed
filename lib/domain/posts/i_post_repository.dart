import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

abstract class IPostRepository {
  Stream<Either<PostFailure, KtList<Post>>> fetchAll();
  Stream<Either<PostFailure, KtList<Post>>> fetchAllFavorites();
  Future<Either<PostFailure, KtList<Post>>> getAllFavorites();

  Future<Either<PostFailure, Unit>> create(Post post);
  Future<Either<PostFailure, Unit>> update(Post post);
  Future<Either<PostFailure, Unit>> delete(Post post);
  Future<Either<PostFailure, Unit>> like(String postId);
  Future<Either<PostFailure, Unit>> unlike(String postId);
}
