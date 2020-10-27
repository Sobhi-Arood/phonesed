// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required UserName name,
      @required EmailAddress email,
      @required String avatarUrl,
      @required DateTime joinDate,
      @required int numOfPublishedPosts,
      @required bool verified}) {
    return _User(
      id: id,
      name: name,
      email: email,
      avatarUrl: avatarUrl,
      joinDate: joinDate,
      numOfPublishedPosts: numOfPublishedPosts,
      verified: verified,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id;
  UserName get name;
  EmailAddress get email;
  String get avatarUrl;
  DateTime get joinDate;
  int get numOfPublishedPosts;
  bool get verified;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UserName name,
      EmailAddress email,
      String avatarUrl,
      DateTime joinDate,
      int numOfPublishedPosts,
      bool verified});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object avatarUrl = freezed,
    Object joinDate = freezed,
    Object numOfPublishedPosts = freezed,
    Object verified = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as UserName,
      email: email == freezed ? _value.email : email as EmailAddress,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
      numOfPublishedPosts: numOfPublishedPosts == freezed
          ? _value.numOfPublishedPosts
          : numOfPublishedPosts as int,
      verified: verified == freezed ? _value.verified : verified as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UserName name,
      EmailAddress email,
      String avatarUrl,
      DateTime joinDate,
      int numOfPublishedPosts,
      bool verified});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object avatarUrl = freezed,
    Object joinDate = freezed,
    Object numOfPublishedPosts = freezed,
    Object verified = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as UserName,
      email: email == freezed ? _value.email : email as EmailAddress,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      joinDate: joinDate == freezed ? _value.joinDate : joinDate as DateTime,
      numOfPublishedPosts: numOfPublishedPosts == freezed
          ? _value.numOfPublishedPosts
          : numOfPublishedPosts as int,
      verified: verified == freezed ? _value.verified : verified as bool,
    ));
  }
}

/// @nodoc
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.avatarUrl,
      @required this.joinDate,
      @required this.numOfPublishedPosts,
      @required this.verified})
      : assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(avatarUrl != null),
        assert(joinDate != null),
        assert(numOfPublishedPosts != null),
        assert(verified != null);

  @override
  final UniqueId id;
  @override
  final UserName name;
  @override
  final EmailAddress email;
  @override
  final String avatarUrl;
  @override
  final DateTime joinDate;
  @override
  final int numOfPublishedPosts;
  @override
  final bool verified;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, email: $email, avatarUrl: $avatarUrl, joinDate: $joinDate, numOfPublishedPosts: $numOfPublishedPosts, verified: $verified)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('joinDate', joinDate))
      ..add(DiagnosticsProperty('numOfPublishedPosts', numOfPublishedPosts))
      ..add(DiagnosticsProperty('verified', verified));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.joinDate, joinDate) ||
                const DeepCollectionEquality()
                    .equals(other.joinDate, joinDate)) &&
            (identical(other.numOfPublishedPosts, numOfPublishedPosts) ||
                const DeepCollectionEquality()
                    .equals(other.numOfPublishedPosts, numOfPublishedPosts)) &&
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
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(joinDate) ^
      const DeepCollectionEquality().hash(numOfPublishedPosts) ^
      const DeepCollectionEquality().hash(verified);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id,
      @required UserName name,
      @required EmailAddress email,
      @required String avatarUrl,
      @required DateTime joinDate,
      @required int numOfPublishedPosts,
      @required bool verified}) = _$_User;

  @override
  UniqueId get id;
  @override
  UserName get name;
  @override
  EmailAddress get email;
  @override
  String get avatarUrl;
  @override
  DateTime get joinDate;
  @override
  int get numOfPublishedPosts;
  @override
  bool get verified;
  @override
  _$UserCopyWith<_User> get copyWith;
}
