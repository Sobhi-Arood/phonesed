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
  _GetDevicesStarted getDevicesStarted(String brand) {
    return _GetDevicesStarted(
      brand,
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
    @required Result getDevicesStarted(String brand),
    @required
        Result devicesReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getDevicesStarted(String brand),
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
  $Res call({String brand});
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
    Object brand = freezed,
  }) {
    return _then(_GetDevicesStarted(
      brand == freezed ? _value.brand : brand as String,
    ));
  }
}

/// @nodoc
class _$_GetDevicesStarted implements _GetDevicesStarted {
  const _$_GetDevicesStarted(this.brand) : assert(brand != null);

  @override
  final String brand;

  @override
  String toString() {
    return 'PostFormDevicesEvent.getDevicesStarted(brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDevicesStarted &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(brand);

  @override
  _$GetDevicesStartedCopyWith<_GetDevicesStarted> get copyWith =>
      __$GetDevicesStartedCopyWithImpl<_GetDevicesStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getDevicesStarted(String brand),
    @required
        Result devicesReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  }) {
    assert(getDevicesStarted != null);
    assert(devicesReceived != null);
    return getDevicesStarted(brand);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getDevicesStarted(String brand),
    Result devicesReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getDevicesStarted != null) {
      return getDevicesStarted(brand);
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
  const factory _GetDevicesStarted(String brand) = _$_GetDevicesStarted;

  String get brand;
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
    @required Result getDevicesStarted(String brand),
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
    Result getDevicesStarted(String brand),
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
  _LoadCitiesSuccess loadCitiesSuccess(KtList<String> data) {
    return _LoadCitiesSuccess(
      data,
    );
  }

// ignore: unused_element
  _LoadCitiesFailure loadCitiesFailure(PostFailure postFailure) {
    return _LoadCitiesFailure(
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
    @required Result loadCitiesSuccess(KtList<String> data),
    @required Result loadCitiesFailure(PostFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadCitiesSuccess(KtList<String> data),
    Result loadCitiesFailure(PostFailure postFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadCitiesSuccess(_LoadCitiesSuccess value),
    @required Result loadCitiesFailure(_LoadCitiesFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadCitiesSuccess(_LoadCitiesSuccess value),
    Result loadCitiesFailure(_LoadCitiesFailure value),
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
    @required Result loadCitiesSuccess(KtList<String> data),
    @required Result loadCitiesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadCitiesSuccess(KtList<String> data),
    Result loadCitiesFailure(PostFailure postFailure),
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
    @required Result loadCitiesSuccess(_LoadCitiesSuccess value),
    @required Result loadCitiesFailure(_LoadCitiesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadCitiesSuccess(_LoadCitiesSuccess value),
    Result loadCitiesFailure(_LoadCitiesFailure value),
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
    @required Result loadCitiesSuccess(KtList<String> data),
    @required Result loadCitiesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadCitiesSuccess(KtList<String> data),
    Result loadCitiesFailure(PostFailure postFailure),
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
    @required Result loadCitiesSuccess(_LoadCitiesSuccess value),
    @required Result loadCitiesFailure(_LoadCitiesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadCitiesSuccess(_LoadCitiesSuccess value),
    Result loadCitiesFailure(_LoadCitiesFailure value),
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
abstract class _$LoadCitiesSuccessCopyWith<$Res> {
  factory _$LoadCitiesSuccessCopyWith(
          _LoadCitiesSuccess value, $Res Function(_LoadCitiesSuccess) then) =
      __$LoadCitiesSuccessCopyWithImpl<$Res>;
  $Res call({KtList<String> data});
}

/// @nodoc
class __$LoadCitiesSuccessCopyWithImpl<$Res>
    extends _$PostFormDevicesStateCopyWithImpl<$Res>
    implements _$LoadCitiesSuccessCopyWith<$Res> {
  __$LoadCitiesSuccessCopyWithImpl(
      _LoadCitiesSuccess _value, $Res Function(_LoadCitiesSuccess) _then)
      : super(_value, (v) => _then(v as _LoadCitiesSuccess));

  @override
  _LoadCitiesSuccess get _value => super._value as _LoadCitiesSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LoadCitiesSuccess(
      data == freezed ? _value.data : data as KtList<String>,
    ));
  }
}

/// @nodoc
class _$_LoadCitiesSuccess implements _LoadCitiesSuccess {
  const _$_LoadCitiesSuccess(this.data) : assert(data != null);

  @override
  final KtList<String> data;

  @override
  String toString() {
    return 'PostFormDevicesState.loadCitiesSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCitiesSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$LoadCitiesSuccessCopyWith<_LoadCitiesSuccess> get copyWith =>
      __$LoadCitiesSuccessCopyWithImpl<_LoadCitiesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadCitiesSuccess(KtList<String> data),
    @required Result loadCitiesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return loadCitiesSuccess(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadCitiesSuccess(KtList<String> data),
    Result loadCitiesFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCitiesSuccess != null) {
      return loadCitiesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadCitiesSuccess(_LoadCitiesSuccess value),
    @required Result loadCitiesFailure(_LoadCitiesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return loadCitiesSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadCitiesSuccess(_LoadCitiesSuccess value),
    Result loadCitiesFailure(_LoadCitiesFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCitiesSuccess != null) {
      return loadCitiesSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadCitiesSuccess implements PostFormDevicesState {
  const factory _LoadCitiesSuccess(KtList<String> data) = _$_LoadCitiesSuccess;

  KtList<String> get data;
  _$LoadCitiesSuccessCopyWith<_LoadCitiesSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadCitiesFailureCopyWith<$Res> {
  factory _$LoadCitiesFailureCopyWith(
          _LoadCitiesFailure value, $Res Function(_LoadCitiesFailure) then) =
      __$LoadCitiesFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$LoadCitiesFailureCopyWithImpl<$Res>
    extends _$PostFormDevicesStateCopyWithImpl<$Res>
    implements _$LoadCitiesFailureCopyWith<$Res> {
  __$LoadCitiesFailureCopyWithImpl(
      _LoadCitiesFailure _value, $Res Function(_LoadCitiesFailure) _then)
      : super(_value, (v) => _then(v as _LoadCitiesFailure));

  @override
  _LoadCitiesFailure get _value => super._value as _LoadCitiesFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(_LoadCitiesFailure(
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
class _$_LoadCitiesFailure implements _LoadCitiesFailure {
  const _$_LoadCitiesFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostFormDevicesState.loadCitiesFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadCitiesFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  _$LoadCitiesFailureCopyWith<_LoadCitiesFailure> get copyWith =>
      __$LoadCitiesFailureCopyWithImpl<_LoadCitiesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadCitiesSuccess(KtList<String> data),
    @required Result loadCitiesFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return loadCitiesFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadCitiesSuccess(KtList<String> data),
    Result loadCitiesFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCitiesFailure != null) {
      return loadCitiesFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadCitiesSuccess(_LoadCitiesSuccess value),
    @required Result loadCitiesFailure(_LoadCitiesFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadCitiesSuccess != null);
    assert(loadCitiesFailure != null);
    return loadCitiesFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadCitiesSuccess(_LoadCitiesSuccess value),
    Result loadCitiesFailure(_LoadCitiesFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCitiesFailure != null) {
      return loadCitiesFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadCitiesFailure implements PostFormDevicesState {
  const factory _LoadCitiesFailure(PostFailure postFailure) =
      _$_LoadCitiesFailure;

  PostFailure get postFailure;
  _$LoadCitiesFailureCopyWith<_LoadCitiesFailure> get copyWith;
}
