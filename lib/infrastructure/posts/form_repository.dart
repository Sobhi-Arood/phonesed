import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/posts/i_form_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

@LazySingleton(as: IFormRepository)
class FormRepository implements IFormRepository {
  final FirebaseFirestore _firestore;

  FormRepository(this._firestore);

  @override
  Future<Either<PostFailure, KtList<String>>> getBrands() async {
    try {
      final brandsDoc =
          await _firestore.collection('Post-Form').doc('Brands').get();

      final brands = brandsDoc.data();

      return right(brands.keys.toImmutableList());
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, KtList<String>>> getDevices(String brand) async {
    try {
      final brandsDoc =
          await _firestore.collection('Post-Form').doc('Brands').get();

      final List<String> data = [];
      final c = brandsDoc.data();
      final arr = c[brand] as List<dynamic>;

      await Future.forEach(arr, (element) async {
        return data.add(element.toString());
      });

      return right(data.toImmutableList());
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, KtList<String>>> getCities() async {
    try {
      final citiesDoc =
          await _firestore.collection('Post-Form').doc('Cities').get();

      final cities = citiesDoc.data();

      return right(cities.keys.toImmutableList());
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, KtList<String>>> getArea(String city) async {
    try {
      final citiesDoc =
          await _firestore.collection('Post-Form').doc('Cities').get();

      final List<String> data = [];
      final c = citiesDoc.data();
      final arr = c[city] as List<dynamic>;

      await Future.forEach(arr, (element) async {
        return data.add(element.toString());
      });

      return right(data.toImmutableList());
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }
}
