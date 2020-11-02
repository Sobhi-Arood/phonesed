import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/core/avatar/avatar_picker_failure.dart';
import 'package:phonesed/domain/core/avatar/i_avatar_picker.dart';
import 'package:phonesed/domain/core/upload/i_upload_facade.dart';

@LazySingleton(as: IAvatarPickerFacade)
class AvatarPickerFacade implements IAvatarPickerFacade {
  final ImagePicker _imagePicker;
  final IUploadFacade _uploadFacade;

  AvatarPickerFacade(this._imagePicker, this._uploadFacade);

  @override
  Future<Either<AvatarPickerFailure, String>> pickImage() async {
    try {
      final PickedFile img = await _imagePicker.getImage(
          source: ImageSource.gallery, imageQuality: 30);
      final File imgFile = File(img.path);
      final i = await _uploadFacade.uploadAvatar(imgFile);
      return right(i.fold((f) => null, (r) => r));
    } catch (_) {
      return left(const AvatarPickerFailure.unknownError());
    }
  }

  @override
  Future<Either<AvatarPickerFailure, File>> pickPostImage() async {
    try {
      final PickedFile img = await _imagePicker.getImage(
          source: ImageSource.gallery, imageQuality: 20);

      if (img == null) {
        return left(const AvatarPickerFailure.cancelledByUser());
      }

      final File imgFile = File(img.path);
      return right(imgFile);
    } catch (_) {
      return left(const AvatarPickerFailure.unknownError());
    }
  }
}
