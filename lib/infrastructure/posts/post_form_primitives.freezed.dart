// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_form_primitives.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BrandPrimitive _$BrandPrimitiveFromJson(Map<String, dynamic> json) {
  return _BrandPrimitive.fromJson(json);
}

/// @nodoc
class _$BrandPrimitiveTearOff {
  const _$BrandPrimitiveTearOff();

// ignore: unused_element
  _BrandPrimitive call(
      {@required String brand,
      @required String logo,
      @required List<String> devices}) {
    return _BrandPrimitive(
      brand: brand,
      logo: logo,
      devices: devices,
    );
  }

// ignore: unused_element
  BrandPrimitive fromJson(Map<String, Object> json) {
    return BrandPrimitive.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BrandPrimitive = _$BrandPrimitiveTearOff();

/// @nodoc
mixin _$BrandPrimitive {
  String get brand;
  String get logo;
  List<String> get devices;

  Map<String, dynamic> toJson();
  $BrandPrimitiveCopyWith<BrandPrimitive> get copyWith;
}

/// @nodoc
abstract class $BrandPrimitiveCopyWith<$Res> {
  factory $BrandPrimitiveCopyWith(
          BrandPrimitive value, $Res Function(BrandPrimitive) then) =
      _$BrandPrimitiveCopyWithImpl<$Res>;
  $Res call({String brand, String logo, List<String> devices});
}

/// @nodoc
class _$BrandPrimitiveCopyWithImpl<$Res>
    implements $BrandPrimitiveCopyWith<$Res> {
  _$BrandPrimitiveCopyWithImpl(this._value, this._then);

  final BrandPrimitive _value;
  // ignore: unused_field
  final $Res Function(BrandPrimitive) _then;

  @override
  $Res call({
    Object brand = freezed,
    Object logo = freezed,
    Object devices = freezed,
  }) {
    return _then(_value.copyWith(
      brand: brand == freezed ? _value.brand : brand as String,
      logo: logo == freezed ? _value.logo : logo as String,
      devices: devices == freezed ? _value.devices : devices as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BrandPrimitiveCopyWith<$Res>
    implements $BrandPrimitiveCopyWith<$Res> {
  factory _$BrandPrimitiveCopyWith(
          _BrandPrimitive value, $Res Function(_BrandPrimitive) then) =
      __$BrandPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String brand, String logo, List<String> devices});
}

/// @nodoc
class __$BrandPrimitiveCopyWithImpl<$Res>
    extends _$BrandPrimitiveCopyWithImpl<$Res>
    implements _$BrandPrimitiveCopyWith<$Res> {
  __$BrandPrimitiveCopyWithImpl(
      _BrandPrimitive _value, $Res Function(_BrandPrimitive) _then)
      : super(_value, (v) => _then(v as _BrandPrimitive));

  @override
  _BrandPrimitive get _value => super._value as _BrandPrimitive;

  @override
  $Res call({
    Object brand = freezed,
    Object logo = freezed,
    Object devices = freezed,
  }) {
    return _then(_BrandPrimitive(
      brand: brand == freezed ? _value.brand : brand as String,
      logo: logo == freezed ? _value.logo : logo as String,
      devices: devices == freezed ? _value.devices : devices as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BrandPrimitive extends _BrandPrimitive {
  const _$_BrandPrimitive(
      {@required this.brand, @required this.logo, @required this.devices})
      : assert(brand != null),
        assert(logo != null),
        assert(devices != null),
        super._();

  factory _$_BrandPrimitive.fromJson(Map<String, dynamic> json) =>
      _$_$_BrandPrimitiveFromJson(json);

  @override
  final String brand;
  @override
  final String logo;
  @override
  final List<String> devices;

  @override
  String toString() {
    return 'BrandPrimitive(brand: $brand, logo: $logo, devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrandPrimitive &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(other.devices, devices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(devices);

  @override
  _$BrandPrimitiveCopyWith<_BrandPrimitive> get copyWith =>
      __$BrandPrimitiveCopyWithImpl<_BrandPrimitive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BrandPrimitiveToJson(this);
  }
}

abstract class _BrandPrimitive extends BrandPrimitive {
  const _BrandPrimitive._() : super._();
  const factory _BrandPrimitive(
      {@required String brand,
      @required String logo,
      @required List<String> devices}) = _$_BrandPrimitive;

  factory _BrandPrimitive.fromJson(Map<String, dynamic> json) =
      _$_BrandPrimitive.fromJson;

  @override
  String get brand;
  @override
  String get logo;
  @override
  List<String> get devices;
  @override
  _$BrandPrimitiveCopyWith<_BrandPrimitive> get copyWith;
}

LocationPrimitive _$LocationPrimitiveFromJson(Map<String, dynamic> json) {
  return _LocationPrimitive.fromJson(json);
}

/// @nodoc
class _$LocationPrimitiveTearOff {
  const _$LocationPrimitiveTearOff();

// ignore: unused_element
  _LocationPrimitive call(
      {@required String city, @required List<String> areas}) {
    return _LocationPrimitive(
      city: city,
      areas: areas,
    );
  }

// ignore: unused_element
  LocationPrimitive fromJson(Map<String, Object> json) {
    return LocationPrimitive.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocationPrimitive = _$LocationPrimitiveTearOff();

/// @nodoc
mixin _$LocationPrimitive {
  String get city;
  List<String> get areas;

  Map<String, dynamic> toJson();
  $LocationPrimitiveCopyWith<LocationPrimitive> get copyWith;
}

/// @nodoc
abstract class $LocationPrimitiveCopyWith<$Res> {
  factory $LocationPrimitiveCopyWith(
          LocationPrimitive value, $Res Function(LocationPrimitive) then) =
      _$LocationPrimitiveCopyWithImpl<$Res>;
  $Res call({String city, List<String> areas});
}

/// @nodoc
class _$LocationPrimitiveCopyWithImpl<$Res>
    implements $LocationPrimitiveCopyWith<$Res> {
  _$LocationPrimitiveCopyWithImpl(this._value, this._then);

  final LocationPrimitive _value;
  // ignore: unused_field
  final $Res Function(LocationPrimitive) _then;

  @override
  $Res call({
    Object city = freezed,
    Object areas = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed ? _value.city : city as String,
      areas: areas == freezed ? _value.areas : areas as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$LocationPrimitiveCopyWith<$Res>
    implements $LocationPrimitiveCopyWith<$Res> {
  factory _$LocationPrimitiveCopyWith(
          _LocationPrimitive value, $Res Function(_LocationPrimitive) then) =
      __$LocationPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String city, List<String> areas});
}

/// @nodoc
class __$LocationPrimitiveCopyWithImpl<$Res>
    extends _$LocationPrimitiveCopyWithImpl<$Res>
    implements _$LocationPrimitiveCopyWith<$Res> {
  __$LocationPrimitiveCopyWithImpl(
      _LocationPrimitive _value, $Res Function(_LocationPrimitive) _then)
      : super(_value, (v) => _then(v as _LocationPrimitive));

  @override
  _LocationPrimitive get _value => super._value as _LocationPrimitive;

  @override
  $Res call({
    Object city = freezed,
    Object areas = freezed,
  }) {
    return _then(_LocationPrimitive(
      city: city == freezed ? _value.city : city as String,
      areas: areas == freezed ? _value.areas : areas as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocationPrimitive extends _LocationPrimitive {
  const _$_LocationPrimitive({@required this.city, @required this.areas})
      : assert(city != null),
        assert(areas != null),
        super._();

  factory _$_LocationPrimitive.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationPrimitiveFromJson(json);

  @override
  final String city;
  @override
  final List<String> areas;

  @override
  String toString() {
    return 'LocationPrimitive(city: $city, areas: $areas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationPrimitive &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.areas, areas) ||
                const DeepCollectionEquality().equals(other.areas, areas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(areas);

  @override
  _$LocationPrimitiveCopyWith<_LocationPrimitive> get copyWith =>
      __$LocationPrimitiveCopyWithImpl<_LocationPrimitive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationPrimitiveToJson(this);
  }
}

abstract class _LocationPrimitive extends LocationPrimitive {
  const _LocationPrimitive._() : super._();
  const factory _LocationPrimitive(
      {@required String city,
      @required List<String> areas}) = _$_LocationPrimitive;

  factory _LocationPrimitive.fromJson(Map<String, dynamic> json) =
      _$_LocationPrimitive.fromJson;

  @override
  String get city;
  @override
  List<String> get areas;
  @override
  _$LocationPrimitiveCopyWith<_LocationPrimitive> get copyWith;
}
