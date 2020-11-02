// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_picker_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostPickerImageEventTearOff {
  const _$PostPickerImageEventTearOff();

// ignore: unused_element
  _AddClicked addClicked() {
    return const _AddClicked();
  }
}

/// @nodoc
// ignore: unused_element
const $PostPickerImageEvent = _$PostPickerImageEventTearOff();

/// @nodoc
mixin _$PostPickerImageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addClicked(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addClicked(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addClicked(_AddClicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addClicked(_AddClicked value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostPickerImageEventCopyWith<$Res> {
  factory $PostPickerImageEventCopyWith(PostPickerImageEvent value,
          $Res Function(PostPickerImageEvent) then) =
      _$PostPickerImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostPickerImageEventCopyWithImpl<$Res>
    implements $PostPickerImageEventCopyWith<$Res> {
  _$PostPickerImageEventCopyWithImpl(this._value, this._then);

  final PostPickerImageEvent _value;
  // ignore: unused_field
  final $Res Function(PostPickerImageEvent) _then;
}

/// @nodoc
abstract class _$AddClickedCopyWith<$Res> {
  factory _$AddClickedCopyWith(
          _AddClicked value, $Res Function(_AddClicked) then) =
      __$AddClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddClickedCopyWithImpl<$Res>
    extends _$PostPickerImageEventCopyWithImpl<$Res>
    implements _$AddClickedCopyWith<$Res> {
  __$AddClickedCopyWithImpl(
      _AddClicked _value, $Res Function(_AddClicked) _then)
      : super(_value, (v) => _then(v as _AddClicked));

  @override
  _AddClicked get _value => super._value as _AddClicked;
}

/// @nodoc
class _$_AddClicked implements _AddClicked {
  const _$_AddClicked();

  @override
  String toString() {
    return 'PostPickerImageEvent.addClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addClicked(),
  }) {
    assert(addClicked != null);
    return addClicked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addClicked != null) {
      return addClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addClicked(_AddClicked value),
  }) {
    assert(addClicked != null);
    return addClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addClicked(_AddClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addClicked != null) {
      return addClicked(this);
    }
    return orElse();
  }
}

abstract class _AddClicked implements PostPickerImageEvent {
  const factory _AddClicked() = _$_AddClicked;
}

/// @nodoc
class _$PostPickerImageStateTearOff {
  const _$PostPickerImageStateTearOff();

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
  _PickImgSuccess pickImgSuccess(File img) {
    return _PickImgSuccess(
      img,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostPickerImageState = _$PostPickerImageStateTearOff();

/// @nodoc
mixin _$PostPickerImageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result pickImgFailure(AvatarPickerFailure valueFailure),
    @required Result pickImgSuccess(File img),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result pickImgFailure(AvatarPickerFailure valueFailure),
    Result pickImgSuccess(File img),
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
abstract class $PostPickerImageStateCopyWith<$Res> {
  factory $PostPickerImageStateCopyWith(PostPickerImageState value,
          $Res Function(PostPickerImageState) then) =
      _$PostPickerImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostPickerImageStateCopyWithImpl<$Res>
    implements $PostPickerImageStateCopyWith<$Res> {
  _$PostPickerImageStateCopyWithImpl(this._value, this._then);

  final PostPickerImageState _value;
  // ignore: unused_field
  final $Res Function(PostPickerImageState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PostPickerImageStateCopyWithImpl<$Res>
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
    return 'PostPickerImageState.initial()';
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
    @required Result pickImgSuccess(File img),
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
    Result pickImgSuccess(File img),
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

abstract class _Initial implements PostPickerImageState {
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
    extends _$PostPickerImageStateCopyWithImpl<$Res>
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
    return 'PostPickerImageState.actionInProgress()';
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
    @required Result pickImgSuccess(File img),
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
    Result pickImgSuccess(File img),
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

abstract class _ActionInProgress implements PostPickerImageState {
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
    extends _$PostPickerImageStateCopyWithImpl<$Res>
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
    return 'PostPickerImageState.pickImgFailure(valueFailure: $valueFailure)';
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
    @required Result pickImgSuccess(File img),
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
    Result pickImgSuccess(File img),
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

abstract class _PickImgFailure implements PostPickerImageState {
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
  $Res call({File img});
}

/// @nodoc
class __$PickImgSuccessCopyWithImpl<$Res>
    extends _$PostPickerImageStateCopyWithImpl<$Res>
    implements _$PickImgSuccessCopyWith<$Res> {
  __$PickImgSuccessCopyWithImpl(
      _PickImgSuccess _value, $Res Function(_PickImgSuccess) _then)
      : super(_value, (v) => _then(v as _PickImgSuccess));

  @override
  _PickImgSuccess get _value => super._value as _PickImgSuccess;

  @override
  $Res call({
    Object img = freezed,
  }) {
    return _then(_PickImgSuccess(
      img == freezed ? _value.img : img as File,
    ));
  }
}

/// @nodoc
class _$_PickImgSuccess implements _PickImgSuccess {
  const _$_PickImgSuccess(this.img) : assert(img != null);

  @override
  final File img;

  @override
  String toString() {
    return 'PostPickerImageState.pickImgSuccess(img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PickImgSuccess &&
            (identical(other.img, img) ||
                const DeepCollectionEquality().equals(other.img, img)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(img);

  @override
  _$PickImgSuccessCopyWith<_PickImgSuccess> get copyWith =>
      __$PickImgSuccessCopyWithImpl<_PickImgSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result pickImgFailure(AvatarPickerFailure valueFailure),
    @required Result pickImgSuccess(File img),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(pickImgFailure != null);
    assert(pickImgSuccess != null);
    return pickImgSuccess(img);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result pickImgFailure(AvatarPickerFailure valueFailure),
    Result pickImgSuccess(File img),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pickImgSuccess != null) {
      return pickImgSuccess(img);
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

abstract class _PickImgSuccess implements PostPickerImageState {
  const factory _PickImgSuccess(File img) = _$_PickImgSuccess;

  File get img;
  _$PickImgSuccessCopyWith<_PickImgSuccess> get copyWith;
}
