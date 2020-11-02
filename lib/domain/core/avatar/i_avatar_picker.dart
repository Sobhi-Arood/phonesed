import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/core/avatar/avatar_picker_failure.dart';

abstract class IAvatarPickerFacade {
  Future<Either<AvatarPickerFailure, String>> pickImage();
  Future<Either<AvatarPickerFailure, File>> pickPostImage();
}
