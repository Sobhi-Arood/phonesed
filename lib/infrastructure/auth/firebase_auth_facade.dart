import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/auth/i_auth_facade.dart';
import 'package:phonesed/domain/auth/i_user_repository.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:phonesed/infrastructure/auth/user_dtos.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final IUserRepository _userRepository;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn,
      this._userRepository, this._firestore);

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

      await createdUser.user.sendEmailVerification();

      _userRepository.create(
        User(
          id: UniqueId.fromUniqueString(createdUser.user.uid),
          name: UserName(userNameStr),
          email: EmailAddress(emailAddressStr),
          phoneNumber: '',
          avatarUrl: '',
          joinDate: DateTime.now(),
          numOfPublishedPosts: 0,
          verified: false,
          favorites: optionOf(ListFavorites(emptyList())),
        ),
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
      final user = await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);

      if (user.user.emailVerified) {
        //   _userRepository.update(
        //   User(
        //     id: UniqueId.fromUniqueString(createdUser.user.uid),
        //     name: UserName(userNameStr),
        //     email: EmailAddress(emailAddressStr),
        //     phoneNumber: '',
        //     avatarUrl: '',
        //     joinDate: DateTime.now(),
        //     numOfPublishedPosts: 0,
        //     verified: false,
        //     favorites: optionOf(ListFavorites(emptyList())),
        //   ),
        // );
        return right(unit);
      } else {
        return left(const AuthFailure.emailNotVerified());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
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

      final readUser = _firestore.collection('Users').doc(createdUser.user.uid);

      await _firestore.runTransaction((transaction) async {
        return transaction
            .get(readUser)
            .then((userData) => UserDto.fromFirestore(userData))
            .then((u) {
          _userRepository.update(
            User(
              id: UniqueId.fromUniqueString(createdUser.user.uid),
              name: UserName(createdUser.user.displayName),
              email: EmailAddress(createdUser.user.email),
              phoneNumber: u.phoneNumber,
              avatarUrl: u.avatar,
              joinDate: u.joinDate,
              numOfPublishedPosts: u.numberOfPublishedPosts,
              verified: true,
              favorites: optionOf(ListFavorites(u.favorites
                  .map((e) => UniqueId.fromUniqueString(e))
                  .toImmutableList())),
            ),
          );
        }).catchError((e) {
          _userRepository.create(
            User(
              id: UniqueId.fromUniqueString(createdUser.user.uid),
              name: UserName(createdUser.user.displayName),
              email: EmailAddress(createdUser.user.email),
              phoneNumber: '',
              avatarUrl: createdUser.user.photoURL ?? '',
              joinDate: DateTime.now(),
              numOfPublishedPosts: 0,
              verified: false,
              favorites: optionOf(ListFavorites(emptyList())),
            ),
          );
        });
      });

      return right(unit);
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() =>
      Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);

  @override
  Future<Option<String>> getSignedInUserUid() async {
    // final optionalUser = optionOf(_firebaseAuth.currentUser?.emailVerified);
    final optionalUser = optionOf(_firebaseAuth.currentUser);
    return optionalUser.fold(() {
      return none();
    }, (user) {
      if (user.emailVerified) {
        return optionOf(user.uid);
      } else {
        return none();
      }
    });
    // if (_firebaseAuth.currentUser.emailVerified) {

    // } else {

    // }
  }

  // @override
  // Future<Option<User>> getSignedInUser() async {
  //   final u = await _userRepository.read();
  //   return u.fold((l) => none(), (r) => some(r));
  // }
}
