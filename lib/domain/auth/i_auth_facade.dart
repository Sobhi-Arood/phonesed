import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:phonesed/domain/auth/auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<String>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}

class User {
  String userId;
  User(this.userId);
}
