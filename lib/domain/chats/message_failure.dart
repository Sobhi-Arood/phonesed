import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_failure.freezed.dart';

@freezed
abstract class MessageFailure with _$MessageFailure {
  const factory MessageFailure.unableToSend() = _UnableToSend;
  const factory MessageFailure.unexpected() = _Unexpected;
  const factory MessageFailure.insufficientPermission() =
      _InsufficientPermission;
}
