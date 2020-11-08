import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_failure.freezed.dart';

@freezed
abstract class PostFailure with _$PostFailure {
  const factory PostFailure.unexpected() = _Unexpected;
  const factory PostFailure.insufficientPermission() = _InsufficientPermission;
  const factory PostFailure.unableToUpdate() = _UnableToUpdate;
  const factory PostFailure.notLoggedIn() = _NotLoggedIn;
}
