import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/core/upload/i_upload_facade.dart';
import 'package:phonesed/domain/core/upload/upload_failure.dart';

@LazySingleton(as: IUploadFacade)
class UploadFacade implements IUploadFacade {
  final FirebaseStorage _firebaseStorage;
  UploadFacade(this._firebaseStorage);

  @override
  Future<Either<UploadFailure, String>> uploadAvatar(File avatar) async {
    try {
      final String filePath = 'avatar/${DateTime.now()}.png';
      final StorageReference storageReference =
          _firebaseStorage.ref().child(filePath);
      final StorageUploadTask uploadTask = storageReference.putFile(avatar);
      await uploadTask.onComplete;
      final url = await storageReference.getDownloadURL();
      return right(url.toString());
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const UploadFailure.insufficientPermission());
      } else {
        return left(const UploadFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UploadFailure, List<String>>> uploadPostImages(
      List<String> images, String postName) async {
    final List<String> urlList = [];
    try {
      await Future.forEach(images, (String img) async {
        final String filePath = 'posts-images/$postName/${DateTime.now()}.png';
        final StorageReference storageReference =
            _firebaseStorage.ref().child(filePath);
        final fi = File(img);
        final StorageUploadTask uploadTask = storageReference.putFile(fi);
        await uploadTask.onComplete;
        final url = await storageReference.getDownloadURL();
        urlList.add(url.toString());
      });
      // images.forEach((file) async {
      // final String filePath = 'posts-images/$postName/${DateTime.now()}.png';
      // final StorageReference storageReference =
      //     _firebaseStorage.ref().child(filePath);
      // final fi = File(file);
      // final StorageUploadTask uploadTask = storageReference.putFile(fi);
      // await uploadTask.onComplete;
      // final url = await storageReference.getDownloadURL();
      // urlList.add(url.toString());
      // });
      return right(urlList);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const UploadFailure.insufficientPermission());
      } else {
        return left(const UploadFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UploadFailure, Unit>> deleteImages(String postId) async {
    try {
      final StorageReference storageReference =
          _firebaseStorage.ref().child('posts-images/$postId');
      print(postId);
      await storageReference.delete();
      return right(unit);
    } catch (e) {
      return left(const UploadFailure.unexpected());
    }
  }
}
