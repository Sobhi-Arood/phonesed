import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_picker_failure.freezed.dart';

@freezed
abstract class AvatarPickerFailure with _$AvatarPickerFailure {
  const factory AvatarPickerFailure.cancelledByUser() = _CancelledByUser;
  const factory AvatarPickerFailure.unknownError() = _UnknownError;
}
