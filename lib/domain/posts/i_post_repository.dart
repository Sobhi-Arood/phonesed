import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/domain/posts/post_location.dart';

abstract class IPostRepository {
  Stream<Either<PostFailure, KtList<Post>>> fetchAll();
  Stream<Either<PostFailure, KtList<Post>>> fetchAllFavorites(String id);
  Future<Either<PostFailure, KtList<Post>>> getAllFavorites();
  Stream<Either<PostFailure, KtList<String>>> fetchFavoritesIds();

  Future<Either<PostFailure, Unit>> create(Post post);
  Future<Either<PostFailure, Unit>> update(Post post);
  Future<Either<PostFailure, Unit>> delete(Post post);
  Future<Either<PostFailure, Unit>> like(String postId);
  Future<Either<PostFailure, Unit>> unlike(String postId);
}
