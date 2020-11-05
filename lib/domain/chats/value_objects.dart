import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/value_objects.dart';
import 'package:phonesed/domain/core/value_validators.dart';

class MessageContent extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory MessageContent(String input) {
    assert(input != null);
    return MessageContent._(validateStringNotEmpty(input));
  }

  const MessageContent._(this.value);
}
