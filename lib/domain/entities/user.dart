import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required UserName name,
    @required EmailAddress email,
    @required String avatarUrl,
    @required DateTime joinDate,
    @required int numOfPublishedPosts,
    @required bool verified,
  }) = _User;
}
