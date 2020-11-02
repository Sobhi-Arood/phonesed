import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/core/upload/upload_failure.dart';

abstract class IUploadFacade {
  Future<Either<UploadFailure, String>> uploadAvatar(File avatar);
  Future<Either<UploadFailure, List<String>>> uploadPostImages(
      List<String> images, String postName);
}
