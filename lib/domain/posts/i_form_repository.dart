import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'post_failure.dart';

abstract class IFormRepository {
  Future<Either<PostFailure, KtList<String>>> getBrands();
  Future<Either<PostFailure, KtList<String>>> getDevices(String brand);
  Future<Either<PostFailure, KtList<String>>> getCities();
  Future<Either<PostFailure, KtList<String>>> getArea(String city);
}
