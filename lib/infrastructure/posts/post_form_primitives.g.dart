// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_form_primitives.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandPrimitive _$_$_BrandPrimitiveFromJson(Map<String, dynamic> json) {
  return _$_BrandPrimitive(
    brand: json['brand'] as String,
    logo: json['logo'] as String,
    devices: (json['devices'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_BrandPrimitiveToJson(_$_BrandPrimitive instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'logo': instance.logo,
      'devices': instance.devices,
    };

_$_LocationPrimitive _$_$_LocationPrimitiveFromJson(Map<String, dynamic> json) {
  return _$_LocationPrimitive(
    city: json['city'] as String,
    areas: (json['areas'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_LocationPrimitiveToJson(
        _$_LocationPrimitive instance) =>
    <String, dynamic>{
      'city': instance.city,
      'areas': instance.areas,
    };
