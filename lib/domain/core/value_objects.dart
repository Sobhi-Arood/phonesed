import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:phonesed/domain/core/errors.dart';
import 'package:phonesed/domain/core/failures.dart';

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
