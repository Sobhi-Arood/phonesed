// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileUpdateEventTearOff {
  const _$UserProfileUpdateEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<User> initialUserOption) {
    return _Initialized(
      initialUserOption,
    );
  }

// ignore: unused_element
  _AvatarChanged avatarChanged(String avatarImgUrl) {
    return _AvatarChanged(
      avatarImgUrl,
    );
  }

// ignore: unused_element
  _UserNameChanged userNameChanged(String usernameStr) {
    return _UserNameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  _PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return _PhoneNumberChanged(
      phoneNumberStr,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileUpdateEvent = _$UserProfileUpdateEventTearOff();

/// @nodoc
mixin _$UserProfileUpdateEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result avatarChanged(String avatarImgUrl),
    @required Result userNameChanged(String usernameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result avatarChanged(String avatarImgUrl),
    Result userNameChanged(String usernameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result avatarChanged(_AvatarChanged value),
    @required Result userNameChanged(_UserNameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result avatarChanged(_AvatarChanged value),
    Result userNameChanged(_UserNameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserProfileUpdateEventCopyWith<$Res> {
  factory $UserProfileUpdateEventCopyWith(UserProfileUpdateEvent value,
          $Res Function(UserProfileUpdateEvent) then) =
      _$UserProfileUpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileUpdateEventCopyWithImpl<$Res>
    implements $UserProfileUpdateEventCopyWith<$Res> {
  _$UserProfileUpdateEventCopyWithImpl(this._value, this._then);

  final UserProfileUpdateEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileUpdateEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<User> initialUserOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$UserProfileUpdateEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialUserOption = freezed,
  }) {
    return _then(_Initialized(
      initialUserOption == freezed
          ? _value.initialUserOption
          : initialUserOption as Option<User>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUserOption)
      : assert(initialUserOption != null);

  @override
  final Option<User> initialUserOption;

  @override
  String toString() {
    return 'UserProfileUpdateEvent.initialized(initialUserOption: $initialUserOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialUserOption, initialUserOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialUserOption, initialUserOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialUserOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result avatarChanged(String avatarImgUrl),
    @required Result userNameChanged(String usernameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return initialized(initialUserOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result avatarChanged(String avatarImgUrl),
    Result userNameChanged(String usernameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result avatarChanged(_AvatarChanged value),
    @required Result userNameChanged(_UserNameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result avatarChanged(_AvatarChanged value),
    Result userNameChanged(_UserNameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserProfileUpdateEvent {
  const factory _Initialized(Option<User> initialUserOption) = _$_Initialized;

  Option<User> get initialUserOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$AvatarChangedCopyWith<$Res> {
  factory _$AvatarChangedCopyWith(
          _AvatarChanged value, $Res Function(_AvatarChanged) then) =
      __$AvatarChangedCopyWithImpl<$Res>;
  $Res call({String avatarImgUrl});
}

/// @nodoc
class __$AvatarChangedCopyWithImpl<$Res>
    extends _$UserProfileUpdateEventCopyWithImpl<$Res>
    implements _$AvatarChangedCopyWith<$Res> {
  __$AvatarChangedCopyWithImpl(
      _AvatarChanged _value, $Res Function(_AvatarChanged) _then)
      : super(_value, (v) => _then(v as _AvatarChanged));

  @override
  _AvatarChanged get _value => super._value as _AvatarChanged;

  @override
  $Res call({
    Object avatarImgUrl = freezed,
  }) {
    return _then(_AvatarChanged(
      avatarImgUrl == freezed ? _value.avatarImgUrl : avatarImgUrl as String,
    ));
  }
}

/// @nodoc
class _$_AvatarChanged implements _AvatarChanged {
  const _$_AvatarChanged(this.avatarImgUrl) : assert(avatarImgUrl != null);

  @override
  final String avatarImgUrl;

  @override
  String toString() {
    return 'UserProfileUpdateEvent.avatarChanged(avatarImgUrl: $avatarImgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvatarChanged &&
            (identical(other.avatarImgUrl, avatarImgUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarImgUrl, avatarImgUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(avatarImgUrl);

  @override
  _$AvatarChangedCopyWith<_AvatarChanged> get copyWith =>
      __$AvatarChangedCopyWithImpl<_AvatarChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result avatarChanged(String avatarImgUrl),
    @required Result userNameChanged(String usernameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return avatarChanged(avatarImgUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result avatarChanged(String avatarImgUrl),
    Result userNameChanged(String usernameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(avatarImgUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result avatarChanged(_AvatarChanged value),
    @required Result userNameChanged(_UserNameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result avatarChanged(_AvatarChanged value),
    Result userNameChanged(_UserNameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarChanged implements UserProfileUpdateEvent {
  const factory _AvatarChanged(String avatarImgUrl) = _$_AvatarChanged;

  String get avatarImgUrl;
  _$AvatarChangedCopyWith<_AvatarChanged> get copyWith;
}

/// @nodoc
abstract class _$UserNameChangedCopyWith<$Res> {
  factory _$UserNameChangedCopyWith(
          _UserNameChanged value, $Res Function(_UserNameChanged) then) =
      __$UserNameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class __$UserNameChangedCopyWithImpl<$Res>
    extends _$UserProfileUpdateEventCopyWithImpl<$Res>
    implements _$UserNameChangedCopyWith<$Res> {
  __$UserNameChangedCopyWithImpl(
      _UserNameChanged _value, $Res Function(_UserNameChanged) _then)
      : super(_value, (v) => _then(v as _UserNameChanged));

  @override
  _UserNameChanged get _value => super._value as _UserNameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(_UserNameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

/// @nodoc
class _$_UserNameChanged implements _UserNameChanged {
  const _$_UserNameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'UserProfileUpdateEvent.userNameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserNameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  _$UserNameChangedCopyWith<_UserNameChanged> get copyWith =>
      __$UserNameChangedCopyWithImpl<_UserNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result avatarChanged(String avatarImgUrl),
    @required Result userNameChanged(String usernameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return userNameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result avatarChanged(String avatarImgUrl),
    Result userNameChanged(String usernameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNameChanged != null) {
      return userNameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result avatarChanged(_AvatarChanged value),
    @required Result userNameChanged(_UserNameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result avatarChanged(_AvatarChanged value),
    Result userNameChanged(_UserNameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class _UserNameChanged implements UserProfileUpdateEvent {
  const factory _UserNameChanged(String usernameStr) = _$_UserNameChanged;

  String get usernameStr;
  _$UserNameChangedCopyWith<_UserNameChanged> get copyWith;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$UserProfileUpdateEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumberStr = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr as String,
    ));
  }
}

/// @nodoc
class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumberStr)
      : assert(phoneNumberStr != null);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'UserProfileUpdateEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result avatarChanged(String avatarImgUrl),
    @required Result userNameChanged(String usernameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result avatarChanged(String avatarImgUrl),
    Result userNameChanged(String usernameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result avatarChanged(_AvatarChanged value),
    @required Result userNameChanged(_UserNameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
  }) {
    assert(initialized != null);
    assert(avatarChanged != null);
    assert(userNameChanged != null);
    assert(phoneNumberChanged != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result avatarChanged(_AvatarChanged value),
    Result userNameChanged(_UserNameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements UserProfileUpdateEvent {
  const factory _PhoneNumberChanged(String phoneNumberStr) =
      _$_PhoneNumberChanged;

  String get phoneNumberStr;
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith;
}

/// @nodoc
class _$UserProfileUpdateStateTearOff {
  const _$UserProfileUpdateStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileUpdateState = _$UserProfileUpdateStateTearOff();

/// @nodoc
mixin _$UserProfileUpdateState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserProfileUpdateStateCopyWith<$Res> {
  factory $UserProfileUpdateStateCopyWith(UserProfileUpdateState value,
          $Res Function(UserProfileUpdateState) then) =
      _$UserProfileUpdateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileUpdateStateCopyWithImpl<$Res>
    implements $UserProfileUpdateStateCopyWith<$Res> {
  _$UserProfileUpdateStateCopyWithImpl(this._value, this._then);

  final UserProfileUpdateState _value;
  // ignore: unused_field
  final $Res Function(UserProfileUpdateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserProfileUpdateStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserProfileUpdateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProfileUpdateState {
  const factory _Initial() = _$_Initial;
}
