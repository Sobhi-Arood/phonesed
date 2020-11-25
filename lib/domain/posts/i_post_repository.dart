import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

abstract class IPostRepository {
  Stream<Either<PostFailure, KtList<Post>>> fetchAll();
  Stream<Either<PostFailure, KtList<Post>>> fetchAllFavorites(String id);
  Future<Either<PostFailure, KtList<Post>>> getAllFavorites();
  Stream<Either<PostFailure, KtList<String>>> fetchFavoritesIds();
  Stream<Either<PostFailure, KtList<Post>>> fetchMyPosts();
  Stream<Either<PostFailure, KtList<Post>>> fetchSearchPosts(String query);
  Stream<Either<PostFailure, KtList<Post>>> fetchFilteredPosts(
      String city, String brand, String price);
  Stream<Either<PostFailure, KtList<Post>>> fetchRelatedPosts(
      String brand, String currentId);

  Future<Either<PostFailure, Post>> getPostById(String postId);
  Future<Either<PostFailure, Unit>> create(Post post);
  Future<Either<PostFailure, Unit>> update(Post post);
  Future<Either<PostFailure, Unit>> delete(Post post);
  Future<Either<PostFailure, Unit>> like(String postId);
  Future<Either<PostFailure, Unit>> unlike(String postId);
}
