// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'avatar_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AvatarUserEventTearOff {
  const _$AvatarUserEventTearOff();

// ignore: unused_element
  _AvatarClicked avatarClicked() {
    return const _AvatarClicked();
  }
}

/// @nodoc
// ignore: unused_element
const $AvatarUserEvent = _$AvatarUserEventTearOff();

/// @nodoc
mixin _$AvatarUserEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarClicked(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarClicked(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarClicked(_AvatarClicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarClicked(_AvatarClicked value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AvatarUserEventCopyWith<$Res> {
  factory $AvatarUserEventCopyWith(
          AvatarUserEvent value, $Res Function(AvatarUserEvent) then) =
      _$AvatarUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AvatarUserEventCopyWithImpl<$Res>
    implements $AvatarUserEventCopyWith<$Res> {
  _$AvatarUserEventCopyWithImpl(this._value, this._then);

  final AvatarUserEvent _value;
  // ignore: unused_field
  final $Res Function(AvatarUserEvent) _then;
}

/// @nodoc
abstract class _$AvatarClickedCopyWith<$Res> {
  factory _$AvatarClickedCopyWith(
          _AvatarClicked value, $Res Function(_AvatarClicked) then) =
      __$AvatarClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AvatarClickedCopyWithImpl<$Res>
    extends _$AvatarUserEventCopyWithImpl<$Res>
    implements _$AvatarClickedCopyWith<$Res> {
  __$AvatarClickedCopyWithImpl(
      _AvatarClicked _value, $Res Function(_AvatarClicked) _then)
      : super(_value, (v) => _then(v as _AvatarClicked));

  @override
  _AvatarClicked get _value => super._value as _AvatarClicked;
}

/// @nodoc
class _$_AvatarClicked implements _AvatarClicked {
  const _$_AvatarClicked();

  @override
  String toString() {
    return 'AvatarUserEvent.avatarClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AvatarClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarClicked(),
  }) {
    assert(avatarClicked != null);
    return avatarClicked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarClicked != null) {
      return avatarClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarClicked(_AvatarClicked value),
  }) {
    assert(avatarClicked != null);
    return avatarClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarClicked(_AvatarClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarClicked != null) {
      return avatarClicked(this);
    }
    return orElse();
  }
}

abstract class _AvatarClicked implements AvatarUserEvent {
  const factory _AvatarClicked() = _$_AvatarClicked;
}

/// @nodoc
class _$AvatarUserStateTearOff {
  const _$AvatarUserStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _PickImgFailure pickImgFailure(AvatarPickerFailure valueFailure) {
    return _PickImgFailure(
      valueFailure,
    );
  }

// ignore: unused_element
  _PickImgSuccess pickImgSuccess(String url) {
    return _PickImgSuccess(
      url,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AvatarUserState = _$AvatarUserStateTearOff();

/// @nodoc
mixin _$AvatarUserState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result pickImgFailure(AvatarPickerFailure valueFailure),
    @required Result pickImgSuccess(String url),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result pickImgFailure(AvatarPickerFailure valueFailure),
    Result pickImgSuccess(String url),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result pickImgFailure(_PickImgFailure value),
    @required Result pickImgSuccess(_PickImgSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result pickImgFailure(_PickImgFailure value),
    Result pickImgSuccess(_PickImgSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AvatarUserStateCopyWith<$Res> {
  factory $AvatarUserStateCopyWith(
          AvatarUserState value, $Res Function(AvatarUserState) then) =
      _$AvatarUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AvatarUserStateCopyWithImpl<$Res>
    implements $AvatarUserStateCopyWith<$Res> {
  _$AvatarUserStateCopyWithImpl(this._value, this._then);

  final AvatarUserState _value;
  // ignore: unused_field
  final $Res Function(AvatarUserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AvatarUserStateCopyWithImpl<$Res>
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
    return 'AvatarUserState.initial()';
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
    @required Result actionInProgress(),
    @required Result pickImgFailure(AvatarPickerFailure valueFailure),
    @required Result pickImgSuccess(String url),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result pickImgFailure(AvatarPickerFailure valueFailure),
    Result pickImgSuccess(String url),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result pickImgFailure(_PickImgFailure value),
    @required Result pickImgSuccess(_PickImgSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result pickImgFailure(_PickImgFailure value),
    Result pickImgSuccess(_PickImgSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AvatarUserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$AvatarUserStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'AvatarUserState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result pickImgFailure(AvatarPickerFailure valueFailure),
    @required Result pickImgSuccess(String url),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result pickImgFailure(AvatarPickerFailure valueFailure),
    Result pickImgSuccess(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result pickImgFailure(_PickImgFailure value),
    @required Result pickImgSuccess(_PickImgSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result pickImgFailure(_PickImgFailure value),
    Result pickImgSuccess(_PickImgSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements AvatarUserState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$PickImgFailureCopyWith<$Res> {
  factory _$PickImgFailureCopyWith(
          _PickImgFailure value, $Res Function(_PickImgFailure) then) =
      __$PickImgFailureCopyWithImpl<$Res>;
  $Res call({AvatarPickerFailure valueFailure});

  $AvatarPickerFailureCopyWith<$Res> get valueFailure;
}

/// @nodoc
class __$PickImgFailureCopyWithImpl<$Res>
    extends _$AvatarUserStateCopyWithImpl<$Res>
    implements _$PickImgFailureCopyWith<$Res> {
  __$PickImgFailureCopyWithImpl(
      _PickImgFailure _value, $Res Function(_PickImgFailure) _then)
      : super(_value, (v) => _then(v as _PickImgFailure));

  @override
  _PickImgFailure get _value => super._value as _PickImgFailure;

  @override
  $Res call({
    Object valueFailure = freezed,
  }) {
    return _then(_PickImgFailure(
      valueFailure == freezed
          ? _value.valueFailure
          : valueFailure as AvatarPickerFailure,
    ));
  }

  @override
  $AvatarPickerFailureCopyWith<$Res> get valueFailure {
    if (_value.valueFailure == null) {
      return null;
    }
    return $AvatarPickerFailureCopyWith<$Res>(_value.valueFailure, (value) {
      return _then(_value.copyWith(valueFailure: value));
    });
  }
}

/// @nodoc
class _$_PickImgFailure implements _PickImgFailure {
  const _$_PickImgFailure(this.valueFailure) : assert(valueFailure != null);

  @override
  final AvatarPickerFailure valueFailure;

  @override
  String toString() {
    return 'AvatarUserState.pickImgFailure(valueFailure: $valueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PickImgFailure &&
            (identical(other.valueFailure, valueFailure) ||
                const DeepCollectionEquality()
                    .equals(other.valueFailure, valueFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valueFailure);

  @override
  _$PickImgFailureCopyWith<_PickImgFailure> get copyWith =>
      __$PickImgFailureCopyWithImpl<_PickImgFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result pickImgFailure(AvatarPickerFailure valueFailure),
    @required Result pickImgSuccess(String url),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return pickImgFailure(valueFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result pickImgFailure(AvatarPickerFailure valueFailure),
    Result pickImgSuccess(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickImgFailure != null) {
      return pickImgFailure(valueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result pickImgFailure(_PickImgFailure value),
    @required Result pickImgSuccess(_PickImgSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return pickImgFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result pickImgFailure(_PickImgFailure value),
    Result pickImgSuccess(_PickImgSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickImgFailure != null) {
      return pickImgFailure(this);
    }
    return orElse();
  }
}

abstract class _PickImgFailure implements AvatarUserState {
  const factory _PickImgFailure(AvatarPickerFailure valueFailure) =
      _$_PickImgFailure;

  AvatarPickerFailure get valueFailure;
  _$PickImgFailureCopyWith<_PickImgFailure> get copyWith;
}

/// @nodoc
abstract class _$PickImgSuccessCopyWith<$Res> {
  factory _$PickImgSuccessCopyWith(
          _PickImgSuccess value, $Res Function(_PickImgSuccess) then) =
      __$PickImgSuccessCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$PickImgSuccessCopyWithImpl<$Res>
    extends _$AvatarUserStateCopyWithImpl<$Res>
    implements _$PickImgSuccessCopyWith<$Res> {
  __$PickImgSuccessCopyWithImpl(
      _PickImgSuccess _value, $Res Function(_PickImgSuccess) _then)
      : super(_value, (v) => _then(v as _PickImgSuccess));

  @override
  _PickImgSuccess get _value => super._value as _PickImgSuccess;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_PickImgSuccess(
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$_PickImgSuccess implements _PickImgSuccess {
  const _$_PickImgSuccess(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString() {
    return 'AvatarUserState.pickImgSuccess(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PickImgSuccess &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$PickImgSuccessCopyWith<_PickImgSuccess> get copyWith =>
      __$PickImgSuccessCopyWithImpl<_PickImgSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result pickImgFailure(AvatarPickerFailure valueFailure),
    @required Result pickImgSuccess(String url),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return pickImgSuccess(url);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result pickImgFailure(AvatarPickerFailure valueFailure),
    Result pickImgSuccess(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickImgSuccess != null) {
      return pickImgSuccess(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result pickImgFailure(_PickImgFailure value),
    @required Result pickImgSuccess(_PickImgSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return pickImgSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result pickImgFailure(_PickImgFailure value),
    Result pickImgSuccess(_PickImgSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickImgSuccess != null) {
      return pickImgSuccess(this);
    }
    return orElse();
  }
}

abstract class _PickImgSuccess implements AvatarUserState {
  const factory _PickImgSuccess(String url) = _$_PickImgSuccess;

  String get url;
  _$PickImgSuccessCopyWith<_PickImgSuccess> get copyWith;
}
