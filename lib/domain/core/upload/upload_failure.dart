import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_failure.freezed.dart';

@freezed
abstract class UploadFailure with _$UploadFailure {
  const factory UploadFailure.unexpected() = _Unexpected;
  const factory UploadFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory UploadFailure.unableToUpload() = _UnableToUpload;
}
