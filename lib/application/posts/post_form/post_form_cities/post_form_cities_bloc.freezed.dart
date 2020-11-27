// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_form_cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostFormCitiesEventTearOff {
  const _$PostFormCitiesEventTearOff();

// ignore: unused_element
  _GetCitiesStarted getCitiesStarted() {
    return const _GetCitiesStarted();
  }

// ignore: unused_element
  _CitiesReceived citiesReceived(
      Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts) {
    return _CitiesReceived(
      failureOrPosts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormCitiesEvent = _$PostFormCitiesEventTearOff();

/// @nodoc
mixin _$PostFormCitiesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCitiesStarted(),
    @required
        Result citiesReceived(
            Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCitiesStarted(),
    Result citiesReceived(
        Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCitiesStarted(_GetCitiesStarted value),
    @required Result citiesReceived(_CitiesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCitiesStarted(_GetCitiesStarted value),
    Result citiesReceived(_CitiesReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostFormCitiesEventCopyWith<$Res> {
  factory $PostFormCitiesEventCopyWith(
          PostFormCitiesEvent value, $Res Function(PostFormCitiesEvent) then) =
      _$PostFormCitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormCitiesEventCopyWithImpl<$Res>
    implements $PostFormCitiesEventCopyWith<$Res> {
  _$PostFormCitiesEventCopyWithImpl(this._value, this._then);

  final PostFormCitiesEvent _value;
  // ignore: unused_field
  final $Res Function(PostFormCitiesEvent) _then;
}

/// @nodoc
abstract class _$GetCitiesStartedCopyWith<$Res> {
  factory _$GetCitiesStartedCopyWith(
          _GetCitiesStarted value, $Res Function(_GetCitiesStarted) then) =
      __$GetCitiesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCitiesStartedCopyWithImpl<$Res>
    extends _$PostFormCitiesEventCopyWithImpl<$Res>
    implements _$GetCitiesStartedCopyWith<$Res> {
  __$GetCitiesStartedCopyWithImpl(
      _GetCitiesStarted _value, $Res Function(_GetCitiesStarted) _then)
      : super(_value, (v) => _then(v as _GetCitiesStarted));

  @override
  _GetCitiesStarted get _value => super._value as _GetCitiesStarted;
}

/// @nodoc
class _$_GetCitiesStarted implements _GetCitiesStarted {
  const _$_GetCitiesStarted();

  @override
  String toString() {
    return 'PostFormCitiesEvent.getCitiesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCitiesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCitiesStarted(),
    @required
        Result citiesReceived(
            Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts),
  }) {
    assert(getCitiesStarted != null);
    assert(citiesReceived != null);
    return getCitiesStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCitiesStarted(),
    Result citiesReceived(
        Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCitiesStarted != null) {
      return getCitiesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCitiesStarted(_GetCitiesStarted value),
    @required Result citiesReceived(_CitiesReceived value),
  }) {
    assert(getCitiesStarted != null);
    assert(citiesReceived != null);
    return getCitiesStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCitiesStarted(_GetCitiesStarted value),
    Result citiesReceived(_CitiesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCitiesStarted != null) {
      return getCitiesStarted(this);
    }
    return orElse();
  }
}

abstract class _GetCitiesStarted implements PostFormCitiesEvent {
  const factory _GetCitiesStarted() = _$_GetCitiesStarted;
}

/// @nodoc
abstract class _$CitiesReceivedCopyWith<$Res> {
  factory _$CitiesReceivedCopyWith(
          _CitiesReceived value, $Res Function(_CitiesReceived) then) =
      __$CitiesReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts});
}

/// @nodoc
class __$CitiesReceivedCopyWithImpl<$Res>
    extends _$PostFormCitiesEventCopyWithImpl<$Res>
    implements _$CitiesReceivedCopyWith<$Res> {
  __$CitiesReceivedCopyWithImpl(
      _CitiesReceived _value, $Res Function(_CitiesReceived) _then)
      : super(_value, (v) => _then(v as _CitiesReceived));

  @override
  _CitiesReceived get _value => super._value as _CitiesReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_CitiesReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, KtList<LocationPrimitive>>,
    ));
  }
}

/// @nodoc
class _$_CitiesReceived implements _CitiesReceived {
  const _$_CitiesReceived(this.failureOrPosts) : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts;

  @override
  String toString() {
    return 'PostFormCitiesEvent.citiesReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitiesReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$CitiesReceivedCopyWith<_CitiesReceived> get copyWith =>
      __$CitiesReceivedCopyWithImpl<_CitiesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCitiesStarted(),
    @required
        Result citiesReceived(
            Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts),
  }) {
    assert(getCitiesStarted != null);
    assert(citiesReceived != null);
    return citiesReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCitiesStarted(),
    Result citiesReceived(
        Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (citiesReceived != null) {
      return citiesReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCitiesStarted(_GetCitiesStarted value),
    @required Result citiesReceived(_CitiesReceived value),
  }) {
    assert(getCitiesStarted != null);
    assert(citiesReceived != null);
    return citiesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCitiesStarted(_GetCitiesStarted value),
    Result citiesReceived(_CitiesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (citiesReceived != null) {
      return citiesReceived(this);
    }
    return orElse();
  }
}

abstract class _CitiesReceived implements PostFormCitiesEvent {
  const factory _CitiesReceived(
          Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts) =
      _$_CitiesReceived;

  Either<PostFailure, KtList<LocationPrimitive>> get failureOrPosts;
  _$CitiesReceivedCopyWith<_CitiesReceived> get copyWith;
}

/// @nodoc
class _$PostFormCitiesStateTearOff {
  const _$PostFormCitiesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadCitiesSuccess loadCitiesSuccess(KtList<LocationPrimitive> data) {
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
const $PostFormCitiesState = _$PostFormCitiesStateTearOff();

/// @nodoc
mixin _$PostFormCitiesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadCitiesSuccess(KtList<LocationPrimitive> data),
    @required Result loadCitiesFailure(PostFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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
abstract class $PostFormCitiesStateCopyWith<$Res> {
  factory $PostFormCitiesStateCopyWith(
          PostFormCitiesState value, $Res Function(PostFormCitiesState) then) =
      _$PostFormCitiesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormCitiesStateCopyWithImpl<$Res>
    implements $PostFormCitiesStateCopyWith<$Res> {
  _$PostFormCitiesStateCopyWithImpl(this._value, this._then);

  final PostFormCitiesState _value;
  // ignore: unused_field
  final $Res Function(PostFormCitiesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PostFormCitiesStateCopyWithImpl<$Res>
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
    return 'PostFormCitiesState.initial()';
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
    @required Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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
    Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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

abstract class _Initial implements PostFormCitiesState {
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
    extends _$PostFormCitiesStateCopyWithImpl<$Res>
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
    return 'PostFormCitiesState.loadInProgress()';
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
    @required Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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
    Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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

abstract class _LoadInProgress implements PostFormCitiesState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadCitiesSuccessCopyWith<$Res> {
  factory _$LoadCitiesSuccessCopyWith(
          _LoadCitiesSuccess value, $Res Function(_LoadCitiesSuccess) then) =
      __$LoadCitiesSuccessCopyWithImpl<$Res>;
  $Res call({KtList<LocationPrimitive> data});
}

/// @nodoc
class __$LoadCitiesSuccessCopyWithImpl<$Res>
    extends _$PostFormCitiesStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as KtList<LocationPrimitive>,
    ));
  }
}

/// @nodoc
class _$_LoadCitiesSuccess implements _LoadCitiesSuccess {
  const _$_LoadCitiesSuccess(this.data) : assert(data != null);

  @override
  final KtList<LocationPrimitive> data;

  @override
  String toString() {
    return 'PostFormCitiesState.loadCitiesSuccess(data: $data)';
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
    @required Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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
    Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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

abstract class _LoadCitiesSuccess implements PostFormCitiesState {
  const factory _LoadCitiesSuccess(KtList<LocationPrimitive> data) =
      _$_LoadCitiesSuccess;

  KtList<LocationPrimitive> get data;
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
    extends _$PostFormCitiesStateCopyWithImpl<$Res>
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
    return 'PostFormCitiesState.loadCitiesFailure(postFailure: $postFailure)';
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
    @required Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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
    Result loadCitiesSuccess(KtList<LocationPrimitive> data),
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

abstract class _LoadCitiesFailure implements PostFormCitiesState {
  const factory _LoadCitiesFailure(PostFailure postFailure) =
      _$_LoadCitiesFailure;

  PostFailure get postFailure;
  _$LoadCitiesFailureCopyWith<_LoadCitiesFailure> get copyWith;
}
