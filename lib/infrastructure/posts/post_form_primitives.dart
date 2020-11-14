import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_form_primitives.freezed.dart';
part 'post_form_primitives.g.dart';

@freezed
abstract class BrandPrimitive implements _$BrandPrimitive {
  const BrandPrimitive._();
  const factory BrandPrimitive({
    @required String brand,
    @required String logo,
    @required List<String> devices,
  }) = _BrandPrimitive;

  factory BrandPrimitive.fromJson(Map<String, dynamic> json) =>
      _$BrandPrimitiveFromJson(json);
}

@freezed
abstract class LocationPrimitive implements _$LocationPrimitive {
  const LocationPrimitive._();
  const factory LocationPrimitive({
    @required String city,
    @required List<String> areas,
  }) = _LocationPrimitive;

  factory LocationPrimitive.fromJson(Map<String, dynamic> json) =>
      _$LocationPrimitiveFromJson(json);
}
