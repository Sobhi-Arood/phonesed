// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_form_primitives.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BrandPrimitiveTearOff {
  const _$BrandPrimitiveTearOff();

// ignore: unused_element
  _BrandPrimitive call(
      {@required String brandName, @required String brandImgUrl}) {
    return _BrandPrimitive(
      brandName: brandName,
      brandImgUrl: brandImgUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BrandPrimitive = _$BrandPrimitiveTearOff();

/// @nodoc
mixin _$BrandPrimitive {
  String get brandName;
  String get brandImgUrl;

  $BrandPrimitiveCopyWith<BrandPrimitive> get copyWith;
}

/// @nodoc
abstract class $BrandPrimitiveCopyWith<$Res> {
  factory $BrandPrimitiveCopyWith(
          BrandPrimitive value, $Res Function(BrandPrimitive) then) =
      _$BrandPrimitiveCopyWithImpl<$Res>;
  $Res call({String brandName, String brandImgUrl});
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
    Object brandName = freezed,
    Object brandImgUrl = freezed,
  }) {
    return _then(_value.copyWith(
      brandName: brandName == freezed ? _value.brandName : brandName as String,
      brandImgUrl:
          brandImgUrl == freezed ? _value.brandImgUrl : brandImgUrl as String,
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
  $Res call({String brandName, String brandImgUrl});
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
    Object brandName = freezed,
    Object brandImgUrl = freezed,
  }) {
    return _then(_BrandPrimitive(
      brandName: brandName == freezed ? _value.brandName : brandName as String,
      brandImgUrl:
          brandImgUrl == freezed ? _value.brandImgUrl : brandImgUrl as String,
    ));
  }
}

/// @nodoc
class _$_BrandPrimitive implements _BrandPrimitive {
  const _$_BrandPrimitive(
      {@required this.brandName, @required this.brandImgUrl})
      : assert(brandName != null),
        assert(brandImgUrl != null);

  @override
  final String brandName;
  @override
  final String brandImgUrl;

  @override
  String toString() {
    return 'BrandPrimitive(brandName: $brandName, brandImgUrl: $brandImgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrandPrimitive &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.brandImgUrl, brandImgUrl) ||
                const DeepCollectionEquality()
                    .equals(other.brandImgUrl, brandImgUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(brandImgUrl);

  @override
  _$BrandPrimitiveCopyWith<_BrandPrimitive> get copyWith =>
      __$BrandPrimitiveCopyWithImpl<_BrandPrimitive>(this, _$identity);
}

abstract class _BrandPrimitive implements BrandPrimitive {
  const factory _BrandPrimitive(
      {@required String brandName,
      @required String brandImgUrl}) = _$_BrandPrimitive;

  @override
  String get brandName;
  @override
  String get brandImgUrl;
  @override
  _$BrandPrimitiveCopyWith<_BrandPrimitive> get copyWith;
}
