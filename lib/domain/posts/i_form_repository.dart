import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/infrastructure/posts/post_form_primitives.dart';

import 'post_failure.dart';

abstract class IFormRepository {
  Future<Either<PostFailure, KtList<BrandPrimitive>>> getBrands();
  Future<Either<PostFailure, KtList<String>>> getDevices(int index);
  Future<Either<PostFailure, KtList<String>>> getCities();
  Future<Either<PostFailure, KtList<String>>> getArea(String city);
}
