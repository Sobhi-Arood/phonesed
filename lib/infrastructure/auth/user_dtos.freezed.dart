// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {@required String id,
      @required String name,
      @required String email,
      @required String avatar,
      @required String phoneNumber,
      @required DateTime joinDate,
      @required int numberOfPublishedPosts,
      @required bool verified}) {
    return _UserDto(
      id: id,
      name: name,
      email: email,
      avatar: avatar,
      phoneNumber: phoneNumber,
      joinDate: joinDate,
      numberOfPublishedPosts: numberOfPublishedPosts,
      verified: verified,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id;
  String get name;
  String get email;
  String get avatar;
  String
      get phoneNumber; // @required @ServerTimestampConverter() FieldValue joinDate,
  DateTime get joinDate;
  int get numberOfPublishedPosts;
  bool get verified;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String email,
      String avatar,
      String phoneNumber,
      DateTime joinDate,
      int numberOfPublishedPosts,
      bool verified});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object avatar = freezed,
    Object phoneNumber = freezed,
    Object joinDate = freezed,
    Object numberOfPublishedPosts = freezed,
    Object verified = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
      numberOfPublishedPosts: numberOfPublishedPosts == freezed
          ? _value.numberOfPublishedPosts
          : numberOfPublishedPosts as int,
      verified: verified == freezed ? _value.verified : verified as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String email,
      String avatar,
      String phoneNumber,
      DateTime joinDate,
      int numberOfPublishedPosts,
      bool verified});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object avatar = freezed,
    Object phoneNumber = freezed,
    Object joinDate = freezed,
    Object numberOfPublishedPosts = freezed,
    Object verified = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
      numberOfPublishedPosts: numberOfPublishedPosts == freezed
          ? _value.numberOfPublishedPosts
          : numberOfPublishedPosts as int,
      verified: verified == freezed ? _value.verified : verified as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.avatar,
      @required this.phoneNumber,
      @required this.joinDate,
      @required this.numberOfPublishedPosts,
      @required this.verified})
      : assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(avatar != null),
        assert(phoneNumber != null),
        assert(joinDate != null),
        assert(numberOfPublishedPosts != null),
        assert(verified != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String avatar;
  @override
  final String phoneNumber;
  @override // @required @ServerTimestampConverter() FieldValue joinDate,
  final DateTime joinDate;
  @override
  final int numberOfPublishedPosts;
  @override
  final bool verified;

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, email: $email, avatar: $avatar, phoneNumber: $phoneNumber, joinDate: $joinDate, numberOfPublishedPosts: $numberOfPublishedPosts, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.joinDate, joinDate) ||
                const DeepCollectionEquality()
                    .equals(other.joinDate, joinDate)) &&
            (identical(other.numberOfPublishedPosts, numberOfPublishedPosts) ||
                const DeepCollectionEquality().equals(
                    other.numberOfPublishedPosts, numberOfPublishedPosts)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(joinDate) ^
      const DeepCollectionEquality().hash(numberOfPublishedPosts) ^
      const DeepCollectionEquality().hash(verified);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {@required String id,
      @required String name,
      @required String email,
      @required String avatar,
      @required String phoneNumber,
      @required DateTime joinDate,
      @required int numberOfPublishedPosts,
      @required bool verified}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get avatar;
  @override
  String get phoneNumber;
  @override // @required @ServerTimestampConverter() FieldValue joinDate,
  DateTime get joinDate;
  @override
  int get numberOfPublishedPosts;
  @override
  bool get verified;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
