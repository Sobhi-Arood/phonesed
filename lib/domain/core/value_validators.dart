import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListNotEmpty<T>(
    KtList<T> input) {
  if (input.isNotEmpty()) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateAmount<T>(int input, int min) {
  if (input <= min) {
    return left(
        ValueFailure.negitaveOrLessAmount(failedValue: input, min: min));
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateAmountNotEmpty(int input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}
