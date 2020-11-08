import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/value_objects.dart';
import 'package:phonesed/domain/core/value_validators.dart';
import 'value_validators.dart';

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    assert(input != null);
    return UserName._(validateStringNotEmpty(input));
  }

  const UserName._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}

class Avatar extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Avatar(String url) {
    assert(url != null);
    return Avatar._(validateStringNotEmpty(url));
  }

  const Avatar._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    // assert(input != null);
    // return PhoneNumber._(validatePhoneNumberDigits(input)
    //     .flatMap(validatePhoneNumberLengthDigits));
    return PhoneNumber._(validatePhoneNumberDigits(input));
  }
  const PhoneNumber._(this.value);
}

class ListFavorites<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory ListFavorites(KtList<T> input) {
    assert(input != null);
    return ListFavorites._(right(input));
  }

  const ListFavorites._(this.value);
}
