import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/posts/i_form_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/infrastructure/posts/post_form_primitives.dart';

@LazySingleton(as: IFormRepository)
class FormRepository implements IFormRepository {
  FormRepository();

  @override
  Future<Either<PostFailure, KtList<BrandPrimitive>>> getBrands() async {
    try {
      // final brandsDoc = await _firestore.collection('Post-Form').doc('Brand').get();

      // final Map<String, dynamic> brandMap =
      //     jsonDecode('assets/json/devices.json') as Map<String, dynamic>;
      final jsonString =
          await rootBundle.loadString('assets/json/devices.json');
      final List parsed = jsonDecode(jsonString) as List;
      // var brand = BrandPrimitive.fromJson(parsed);

      final List<BrandPrimitive> listt = parsed
          .map((e) => BrandPrimitive.fromJson(e as Map<String, dynamic>))
          .toList();

      // listt.sort();
      // parsed.forEach((key, value) {
      //   print(value);
      // });

      // print(listt);
      // List<BrandPrimitive> list = [];

      // final brands = brandsDoc.data();
      // brands.forEach((key, value) {
      //   final bp =
      //       BrandPrimitive(brand: key, brandImgUrl: value.toString());
      //   list.add(bp);
      // });
      // list.sort((a, b) => a.brand.compareTo(b.brand));

      return right(listt.toImmutableList());
    } catch (e) {
      // print(e.toString());
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, KtList<String>>> getDevices(int index) async {
    try {
      // final brandsDoc =
      //     await _firestore.collection('Post-Form').doc('Brands').get();

      // final List<String> data = [];
      // final c = brandsDoc.data();
      // final arr = c[brand] as List<dynamic>;

      // await Future.forEach(arr, (element) async {
      //   return data.add(element.toString());
      // });

      final jsonString =
          await rootBundle.loadString('assets/json/devices.json');
      final List parsed = jsonDecode(jsonString) as List;
      final List<BrandPrimitive> list = parsed
          .map((e) => BrandPrimitive.fromJson(e as Map<String, dynamic>))
          .toList();
      final devices = list[index].devices;
      devices.sort();
      // print(list[index].devices);
      return right(devices.toImmutableList());
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, KtList<LocationPrimitive>>> getCities() async {
    try {
      // final citiesDoc =
      //     await _firestore.collection('Post-Form').doc('Cities').get();

      // final cities = citiesDoc.data();
      final jsonString =
          await rootBundle.loadString('assets/json/locations.json');
      final List parsed = jsonDecode(jsonString) as List;

      final List<LocationPrimitive> listt = parsed
          .map((e) => LocationPrimitive.fromJson(e as Map<String, dynamic>))
          .toList();

      return right(listt.toImmutableList());
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, KtList<String>>> getArea(String city) async {
    try {
      // final citiesDoc =
      //     await _firestore.collection('Post-Form').doc('Cities').get();

      // final List<String> data = [];
      // final c = citiesDoc.data();
      // final arr = c[city] as List<dynamic>;

      // await Future.forEach(arr, (element) async {
      //   return data.add(element.toString());
      // });

      final jsonString =
          await rootBundle.loadString('assets/json/locations.json');
      final List parsed = jsonDecode(jsonString) as List;

      final List<LocationPrimitive> listt = parsed
          .map((e) => LocationPrimitive.fromJson(e as Map<String, dynamic>))
          .toList();

      final areas = listt
          .where((element) => element.city == city)
          .map((e) => e.areas)
          .first
          .toImmutableList()
          .sortedWith((a, b) {
        if (a == b) return 0;
        if (a == 'Other') return 1;
        if (b == 'Other') return -1;

        return a.compareTo(b);
      });

      return right(areas);
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }
}
