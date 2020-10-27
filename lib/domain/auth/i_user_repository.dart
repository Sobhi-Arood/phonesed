import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

abstract class IUserRepository {
  Future<Either<PostFailure, User>> read();
  Future<Either<PostFailure, Unit>> create(User user);
  Future<Either<PostFailure, Unit>> update(User user);
}
