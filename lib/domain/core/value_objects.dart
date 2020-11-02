import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:phonesed/domain/core/errors.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/value_validators.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    // id = the right value of either.
    return value.fold((fail) => throw UnexpectedValueError(fail), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((fail) => left(fail), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UserAvatar extends ValueObject<File> {
  @override
  final Either<ValueFailure<File>, File> value;

  factory UserAvatar(File input) {
    assert(input != null);
    return UserAvatar._(validateAvatar(input));
  }

  const UserAvatar._(this.value);
}

class JoinDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory JoinDate(DateTime input) {
    assert(input != null);
    return JoinDate._(validateDate(input));
  }

  const JoinDate._(this.value);
}
