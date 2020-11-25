import 'package:dartz/dartz.dart';
import 'post_failure.dart';

abstract class IShareFacade {
  Future<String> handleDynamicLinks();
  Future<Either<PostFailure, String>> createSharePostLink(
      String postId, String title, String description, String imageUrl);
}
