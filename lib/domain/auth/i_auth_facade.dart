import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:phonesed/domain/auth/auth_failure.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/entities/user.dart';

abstract class IAuthFacade {
  Future<Option<String>> getSignedInUserUid();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required UserName userName,
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
