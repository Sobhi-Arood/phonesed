// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_form_devices_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostFormDevicesEventTearOff {
  const _$PostFormDevicesEventTearOff();

// ignore: unused_element
  _GetDevicesStarted getDevicesStarted(int index) {
    return _GetDevicesStarted(
      index,
    );
  }

// ignore: unused_element
  _DevicesReceived devicesReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) {
    return _DevicesReceived(
      failureOrPosts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormDevicesEvent = _$PostFormDevicesEventTearOff();

/// @nodoc
mixin _$PostFormDevicesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getDevicesStarted(int index),
    @required
        Result devicesReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getDevicesStarted(int index),
    Result devicesReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getDevicesStarted(_GetDevicesStarted value),
    @required Result devicesReceived(_DevicesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getDevicesStarted(_GetDevicesStarted value),
    Result devicesReceived(_DevicesReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostFormDevicesEventCopyWith<$Res> {
  factory $PostFormDevicesEventCopyWith(PostFormDevicesEvent value,
          $Res Function(PostFormDevicesEvent) then) =
      _$PostFormDevicesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormDevicesEventCopyWithImpl<$Res>
    implements $PostFormDevicesEventCopyWith<$Res> {
  _$PostFormDevicesEventCopyWithImpl(this._value, this._then);

  final PostFormDevicesEvent _value;
  // ignore: unused_field
  final $Res Function(PostFormDevicesEvent) _then;
}

/// @nodoc
abstract class _$GetDevicesStartedCopyWith<$Res> {
  factory _$GetDevicesStartedCopyWith(
          _GetDevicesStarted value, $Res Function(_GetDevicesStarted) then) =
      __$GetDevicesStartedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$GetDevicesStartedCopyWithImpl<$Res>
    extends _$PostFormDevicesEventCopyWithImpl<$Res>
    implements _$GetDevicesStartedCopyWith<$Res> {
  __$GetDevicesStartedCopyWithImpl(
      _GetDevicesStarted _value, $Res Function(_GetDevicesStarted) _then)
      : super(_value, (v) => _then(v as _GetDevicesStarted));

  @override
  _GetDevicesStarted get _value => super._value as _GetDevicesStarted;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_GetDevicesStarted(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_GetDevicesStarted implements _GetDevicesStarted {
  const _$_GetDevicesStarted(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'PostFormDevicesEvent.getDevicesStarted(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDevicesStarted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$GetDevicesStartedCopyWith<_GetDevicesStarted> get copyWith =>
      __$GetDevicesStartedCopyWithImpl<_GetDevicesStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getDevicesStarted(int index),
    @required
        Result devicesReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  }) {
    assert(getDevicesStarted != null);
    assert(devicesReceived != null);
    return getDevicesStarted(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getDevicesStarted(int index),
    Result devicesReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getDevicesStarted != null) {
      return getDevicesStarted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getDevicesStarted(_GetDevicesStarted value),
    @required Result devicesReceived(_DevicesReceived value),
  }) {
    assert(getDevicesStarted != null);
    assert(devicesReceived != null);
    return getDevicesStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getDevicesStarted(_GetDevicesStarted value),
    Result devicesReceived(_DevicesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getDevicesStarted != null) {
      return getDevicesStarted(this);
    }
    return orElse();
  }
}

abstract class _GetDevicesStarted implements PostFormDevicesEvent {
  const factory _GetDevicesStarted(int index) = _$_GetDevicesStarted;

  int get index;
  _$GetDevicesStartedCopyWith<_GetDevicesStarted> get copyWith;
}

/// @nodoc
abstract class _$DevicesReceivedCopyWith<$Res> {
  factory _$DevicesReceivedCopyWith(
          _DevicesReceived value, $Res Function(_DevicesReceived) then) =
      __$DevicesReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<String>> failureOrPosts});
}

/// @nodoc
class __$DevicesReceivedCopyWithImpl<$Res>
    extends _$PostFormDevicesEventCopyWithImpl<$Res>
    implements _$DevicesReceivedCopyWith<$Res> {
  __$DevicesReceivedCopyWithImpl(
      _DevicesReceived _value, $Res Function(_DevicesReceived) _then)
      : super(_value, (v) => _then(v as _DevicesReceived));

  @override
  _DevicesReceived get _value => super._value as _DevicesReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_DevicesReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, KtList<String>>,
    ));
  }
}

/// @nodoc
class _$_DevicesReceived implements _DevicesReceived {
  const _$_DevicesReceived(this.failureOrPosts)
      : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, KtList<String>> failureOrPosts;

  @override
  String toString() {
    return 'PostFormDevicesEvent.devicesReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DevicesReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$DevicesReceivedCopyWith<_DevicesReceived> get copyWith =>
      __$DevicesReceivedCopyWithImpl<_DevicesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getDevicesStarted(int index),
    @required
        Result devicesReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  }) {
    assert(getDevicesStarted != null);
    assert(devicesReceived != null);
    return devicesReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getDevicesStarted(int index),
    Result devicesReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (devicesReceived != null) {
      return devicesReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getDevicesStarted(_GetDevicesStarted value),
    @required Result devicesReceived(_DevicesReceived value),
  }) {
    assert(getDevicesStarted != null);
    assert(devicesReceived != null);
    return devicesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getDevicesStarted(_GetDevicesStarted value),
    Result devicesReceived(_DevicesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (devicesReceived != null) {
      return devicesReceived(this);
    }
    return orElse();
  }
}

abstract class _DevicesReceived implements PostFormDevicesEvent {
  const factory _DevicesReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _$_DevicesReceived;

  Either<PostFailure, KtList<String>> get failureOrPosts;
  _$DevicesReceivedCopyWith<_DevicesReceived> get copyWith;
}

/// @nodoc
class _$PostFormDevicesStateTearOff {
  const _$PostFormDevicesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadDevicesSuccess loadDevicesSuccess(KtList<String> data) {
    return _LoadDevicesSuccess(
      data,
    );
  }

// ignore: unused_element
  _LoadDevicesFailure loadDevicesFailure(PostFailure postFailure) {
    return _LoadDevicesFailure(
      postFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormDevicesState = _$PostFormDevicesStateTearOff();

/// @nodoc
mixin _$PostFormDevicesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadDevicesSuccess(KtList<String> data),
    @required Result loadDevicesFailure(PostFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadDevicesSuccess(KtList<String> data),
    Result loadDevicesFailure(PostFailure postFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadDevicesSuccess(_LoadDevicesSuccess value),
    @required Result loadDevicesFailure(_LoadDevicesFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadDevicesSuccess(_LoadDevicesSuccess value),
    Result loadDevicesFailure(_LoadDevicesFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostFormDevicesStateCopyWith<$Res> {
  factory $PostFormDevicesStateCopyWith(PostFormDevicesState value,
          $Res Function(PostFormDevicesState) then) =
      _$PostFormDevicesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormDevicesStateCopyWithImpl<$Res>
    implements $PostFormDevicesStateCopyWith<$Res> {
  _$PostFormDevicesStateCopyWithImpl(this._value, this._then);

  final PostFormDevicesState _value;
  // ignore: unused_field
  final $Res Function(PostFormDevicesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PostFormDevicesStateCopyWithImpl<$Res>
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
    return 'PostFormDevicesState.initial()';
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
    @required Result loadInProgress(),
    @required Result loadDevicesSuccess(KtList<String> data),
    @required Result loadDevicesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadDevicesSuccess(KtList<String> data),
    Result loadDevicesFailure(PostFailure postFailure),
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
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadDevicesSuccess(_LoadDevicesSuccess value),
    @required Result loadDevicesFailure(_LoadDevicesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadDevicesSuccess(_LoadDevicesSuccess value),
    Result loadDevicesFailure(_LoadDevicesFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostFormDevicesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PostFormDevicesStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PostFormDevicesState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadDevicesSuccess(KtList<String> data),
    @required Result loadDevicesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadDevicesSuccess(KtList<String> data),
    Result loadDevicesFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadDevicesSuccess(_LoadDevicesSuccess value),
    @required Result loadDevicesFailure(_LoadDevicesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadDevicesSuccess(_LoadDevicesSuccess value),
    Result loadDevicesFailure(_LoadDevicesFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PostFormDevicesState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadDevicesSuccessCopyWith<$Res> {
  factory _$LoadDevicesSuccessCopyWith(
          _LoadDevicesSuccess value, $Res Function(_LoadDevicesSuccess) then) =
      __$LoadDevicesSuccessCopyWithImpl<$Res>;
  $Res call({KtList<String> data});
}

/// @nodoc
class __$LoadDevicesSuccessCopyWithImpl<$Res>
    extends _$PostFormDevicesStateCopyWithImpl<$Res>
    implements _$LoadDevicesSuccessCopyWith<$Res> {
  __$LoadDevicesSuccessCopyWithImpl(
      _LoadDevicesSuccess _value, $Res Function(_LoadDevicesSuccess) _then)
      : super(_value, (v) => _then(v as _LoadDevicesSuccess));

  @override
  _LoadDevicesSuccess get _value => super._value as _LoadDevicesSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LoadDevicesSuccess(
      data == freezed ? _value.data : data as KtList<String>,
    ));
  }
}

/// @nodoc
class _$_LoadDevicesSuccess implements _LoadDevicesSuccess {
  const _$_LoadDevicesSuccess(this.data) : assert(data != null);

  @override
  final KtList<String> data;

  @override
  String toString() {
    return 'PostFormDevicesState.loadDevicesSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadDevicesSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$LoadDevicesSuccessCopyWith<_LoadDevicesSuccess> get copyWith =>
      __$LoadDevicesSuccessCopyWithImpl<_LoadDevicesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadDevicesSuccess(KtList<String> data),
    @required Result loadDevicesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return loadDevicesSuccess(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadDevicesSuccess(KtList<String> data),
    Result loadDevicesFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDevicesSuccess != null) {
      return loadDevicesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadDevicesSuccess(_LoadDevicesSuccess value),
    @required Result loadDevicesFailure(_LoadDevicesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return loadDevicesSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadDevicesSuccess(_LoadDevicesSuccess value),
    Result loadDevicesFailure(_LoadDevicesFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDevicesSuccess != null) {
      return loadDevicesSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadDevicesSuccess implements PostFormDevicesState {
  const factory _LoadDevicesSuccess(KtList<String> data) =
      _$_LoadDevicesSuccess;

  KtList<String> get data;
  _$LoadDevicesSuccessCopyWith<_LoadDevicesSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadDevicesFailureCopyWith<$Res> {
  factory _$LoadDevicesFailureCopyWith(
          _LoadDevicesFailure value, $Res Function(_LoadDevicesFailure) then) =
      __$LoadDevicesFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$LoadDevicesFailureCopyWithImpl<$Res>
    extends _$PostFormDevicesStateCopyWithImpl<$Res>
    implements _$LoadDevicesFailureCopyWith<$Res> {
  __$LoadDevicesFailureCopyWithImpl(
      _LoadDevicesFailure _value, $Res Function(_LoadDevicesFailure) _then)
      : super(_value, (v) => _then(v as _LoadDevicesFailure));

  @override
  _LoadDevicesFailure get _value => super._value as _LoadDevicesFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(_LoadDevicesFailure(
      postFailure == freezed ? _value.postFailure : postFailure as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get postFailure {
    if (_value.postFailure == null) {
      return null;
    }
    return $PostFailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadDevicesFailure implements _LoadDevicesFailure {
  const _$_LoadDevicesFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostFormDevicesState.loadDevicesFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadDevicesFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  _$LoadDevicesFailureCopyWith<_LoadDevicesFailure> get copyWith =>
      __$LoadDevicesFailureCopyWithImpl<_LoadDevicesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadDevicesSuccess(KtList<String> data),
    @required Result loadDevicesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return loadDevicesFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadDevicesSuccess(KtList<String> data),
    Result loadDevicesFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDevicesFailure != null) {
      return loadDevicesFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadDevicesSuccess(_LoadDevicesSuccess value),
    @required Result loadDevicesFailure(_LoadDevicesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadDevicesSuccess != null);
    assert(loadDevicesFailure != null);
    return loadDevicesFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadDevicesSuccess(_LoadDevicesSuccess value),
    Result loadDevicesFailure(_LoadDevicesFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDevicesFailure != null) {
      return loadDevicesFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadDevicesFailure implements PostFormDevicesState {
  const factory _LoadDevicesFailure(PostFailure postFailure) =
      _$_LoadDevicesFailure;

  PostFailure get postFailure;
  _$LoadDevicesFailureCopyWith<_LoadDevicesFailure> get copyWith;
}
