import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/unique_id.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();
  const factory User({
    @required UniqueId id,
    @required UserName name,
    @required EmailAddress email,
    @required String phoneNumber,
    @required String avatarUrl,
    @required DateTime joinDate,
    @required int numOfPublishedPosts,
    @required bool verified,
  }) = _User;

  // factory User.empty() => User(
  //       id: UniqueId(),
  //       name: UserName(''),
  //       email: EmailAddress(''),
  //       phoneNumber: '',
  //       avatarUrl: '',
  //       joinDate: DateTime.now(),
  //       numOfPublishedPosts: 0,
  //       verified: false,
  //     );

  // Option<ValueFailure<dynamic>> get failureOption {
  //   return name.failureOrUnit
  //       .andThen(email.failureOrUnit)
  //       .fold((f) => some(f), (r) => none());
  // }
}
