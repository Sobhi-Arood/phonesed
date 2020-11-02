import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/auth/i_auth_facade.dart';
import 'package:phonesed/domain/auth/i_user_repository.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/user.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final IUserRepository _userRepository;

  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._userRepository);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {@required UserName userName,
      @required EmailAddress emailAddress,
      @required Password password}) async {
    final userNameStr = userName.getOrCrash();
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final createdUser = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);

      _userRepository.create(
        User(
            id: UniqueId.fromUniqueString(createdUser.user.uid),
            name: UserName(userNameStr),
            email: EmailAddress(emailAddressStr),
            phoneNumber: '',
            avatarUrl: '',
            joinDate: DateTime.now(),
            numOfPublishedPosts: 0,
            verified: false),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'weak-password') {
        return left(const AuthFailure.weakPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.canelledByUser());
      }

      final googleAuth = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

      final createdUser =
          await _firebaseAuth.signInWithCredential(authCredential);
      _userRepository.create(
        User(
            id: UniqueId.fromUniqueString(createdUser.user.uid),
            name: UserName(createdUser.user.displayName),
            email: EmailAddress(createdUser.user.email),
            phoneNumber: '',
            avatarUrl: createdUser.user.photoURL ?? '',
            joinDate: DateTime.now(),
            numOfPublishedPosts: 0,
            verified: false),
      );
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() =>
      Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);

  @override
  Future<Option<String>> getSignedInUserUid() async =>
      optionOf(_firebaseAuth.currentUser?.uid);

  @override
  Future<Option<User>> getSignedInUser() async {
    final u = await _userRepository.read();
    return u.fold((l) => none(), (r) => some(r));
  }
}
