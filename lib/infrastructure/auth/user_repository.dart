import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/auth/i_auth_facade.dart';
import 'package:phonesed/domain/auth/i_user_repository.dart';
import 'package:phonesed/domain/core/errors.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:phonesed/infrastructure/auth/user_dtos.dart';
import 'package:phonesed/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';
import '../../injection.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;
  UserRepository(this._firestore);

  @override
  Stream<Either<PostFailure, User>> watch() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc
        .snapshots()
        .map((event) =>
            right<PostFailure, User>(UserDto.fromJson(event.data()).toDomain()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
    // yield* userDoc.snapshots().map((event) => right<PostFailure, User>(
    // event.data().map((key, value) => print(value));
    // UserDto.fromFirestore(event.data()).toDomain(),
    // ));
  }

  @override
  Future<Either<PostFailure, User>> read() async {
    try {
      final currentUser = await getIt<IAuthFacade>().getSignedInUserUid();
      final uId = currentUser.getOrElse(() => throw NotAuthenticatedError());
      final userDoc = await _firestore.collection('Users').doc(uId).get();
      final user = UserDto.fromJson(userDoc.data()).toDomain();
      return right(user);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
    // user.map((doc) {
    //   return right(UserDto.fromFirestore(doc).toDomain());
    // }).onErrorReturnWith((error) {
    //   if (error is FirebaseException &&
    //       error.message.contains('PERMISSION_DENIED')) {
    //     return left(const PostFailure.insufficientPermission());
    //   } else {
    //     return left(const PostFailure.unexpected());
    //   }
    // });
  }

  @override
  Future<Either<PostFailure, Unit>> create(User user) async {
    try {
      final userDto = UserDto.fromDomain(user);
      await _firestore
          .collection('Users')
          .doc(userDto.id)
          .set(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> update(User user) async {
    try {
      final userDto = UserDto.fromDomain(user);
      await _firestore
          .collection('Users')
          .doc(userDto.id)
          .update(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else if (e is FirebaseException && e.message.contains('not-found')) {
        return left(const PostFailure.unableToUpdate());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }
}
