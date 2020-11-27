import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/value_objects.dart';
import 'package:phonesed/domain/core/value_validators.dart';

class PostTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory PostTitle(String input) {
    assert(input != null);
    return PostTitle._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine));
  }

  const PostTitle._(this.value);
}

class PostImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostImageUrl(String input) {
    assert(input != null);
    return PostImageUrl._(validateStringNotEmpty(input));
  }

  const PostImageUrl._(this.value);
}

class PostDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory PostDescription(String input) {
    assert(input != null);
    return PostDescription._(validateMaxStringLength(input, maxLength));
  }

  const PostDescription._(this.value);
}

class PostPrice extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const minAmount = 10;

  factory PostPrice(int input) {
    assert(input != null);
    return PostPrice._(
        validateAmount(input, minAmount).flatMap(validateAmountNotEmpty));
  }

  const PostPrice._(this.value);
}

class PostImagesList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory PostImagesList(KtList<T> input) {
    assert(input != null);
    return PostImagesList._(
        validateMaxListLength(input, maxLength).flatMap(validateListNotEmpty));
  }

  const PostImagesList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class PostCity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostCity(String input) {
    assert(input != null);
    return PostCity._(validateStringNotEmpty(input));
  }

  const PostCity._(this.value);
}

class PostArea extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostArea(String input) {
    assert(input != null);
    return PostArea._(validateStringNotEmpty(input));
  }

  const PostArea._(this.value);
}

class PostDevice extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostDevice(String input) {
    assert(input != null);
    return PostDevice._(validateStringNotEmpty(input));
  }

  const PostDevice._(this.value);
}

class PostMoreAccessories extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 400;

  factory PostMoreAccessories(String input) {
    assert(input != null);
    return PostMoreAccessories._(validateMaxStringLength(input, maxLength));
  }

  const PostMoreAccessories._(this.value);
}

class PostPublishedDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory PostPublishedDate(DateTime input) {
    assert(input != null);
    return PostPublishedDate._(
      right(input),
    );
  }

  const PostPublishedDate._(this.value);
}

class PostBrand extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostBrand(String input) {
    assert(input != null);
    return PostBrand._(
      right(input),
    );
  }

  const PostBrand._(this.value);
}

class PostAge extends ValueObject<String> {
  static const List<String> ages = [
    'New',
    '1 month',
    '3 months',
    '6 months',
    '1 year',
    '2 years',
    '3 years or more',
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory PostAge(String input) {
    assert(input != null);
    return PostAge._(
      right(input),
    );
  }

  const PostAge._(this.value);
}

class PostCondition extends ValueObject<String> {
  static const List<String> conditions = [
    'New',
    'Used',
    'Scrap',
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory PostCondition(String input) {
    assert(input != null);
    return PostCondition._(
      right(input),
    );
  }

  const PostCondition._(this.value);
}
