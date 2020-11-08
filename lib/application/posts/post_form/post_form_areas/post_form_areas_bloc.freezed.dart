// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_form_areas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostFormAreasEventTearOff {
  const _$PostFormAreasEventTearOff();

// ignore: unused_element
  _GetAreasStarted getAreasStarted(String city) {
    return _GetAreasStarted(
      city,
    );
  }

// ignore: unused_element
  _AreasReceived areasReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) {
    return _AreasReceived(
      failureOrPosts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormAreasEvent = _$PostFormAreasEventTearOff();

/// @nodoc
mixin _$PostFormAreasEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAreasStarted(String city),
    @required
        Result areasReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAreasStarted(String city),
    Result areasReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAreasStarted(_GetAreasStarted value),
    @required Result areasReceived(_AreasReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAreasStarted(_GetAreasStarted value),
    Result areasReceived(_AreasReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostFormAreasEventCopyWith<$Res> {
  factory $PostFormAreasEventCopyWith(
          PostFormAreasEvent value, $Res Function(PostFormAreasEvent) then) =
      _$PostFormAreasEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormAreasEventCopyWithImpl<$Res>
    implements $PostFormAreasEventCopyWith<$Res> {
  _$PostFormAreasEventCopyWithImpl(this._value, this._then);

  final PostFormAreasEvent _value;
  // ignore: unused_field
  final $Res Function(PostFormAreasEvent) _then;
}

/// @nodoc
abstract class _$GetAreasStartedCopyWith<$Res> {
  factory _$GetAreasStartedCopyWith(
          _GetAreasStarted value, $Res Function(_GetAreasStarted) then) =
      __$GetAreasStartedCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class __$GetAreasStartedCopyWithImpl<$Res>
    extends _$PostFormAreasEventCopyWithImpl<$Res>
    implements _$GetAreasStartedCopyWith<$Res> {
  __$GetAreasStartedCopyWithImpl(
      _GetAreasStarted _value, $Res Function(_GetAreasStarted) _then)
      : super(_value, (v) => _then(v as _GetAreasStarted));

  @override
  _GetAreasStarted get _value => super._value as _GetAreasStarted;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_GetAreasStarted(
      city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$_GetAreasStarted implements _GetAreasStarted {
  const _$_GetAreasStarted(this.city) : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'PostFormAreasEvent.getAreasStarted(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAreasStarted &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  _$GetAreasStartedCopyWith<_GetAreasStarted> get copyWith =>
      __$GetAreasStartedCopyWithImpl<_GetAreasStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAreasStarted(String city),
    @required
        Result areasReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  }) {
    assert(getAreasStarted != null);
    assert(areasReceived != null);
    return getAreasStarted(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAreasStarted(String city),
    Result areasReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAreasStarted != null) {
      return getAreasStarted(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAreasStarted(_GetAreasStarted value),
    @required Result areasReceived(_AreasReceived value),
  }) {
    assert(getAreasStarted != null);
    assert(areasReceived != null);
    return getAreasStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAreasStarted(_GetAreasStarted value),
    Result areasReceived(_AreasReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAreasStarted != null) {
      return getAreasStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAreasStarted implements PostFormAreasEvent {
  const factory _GetAreasStarted(String city) = _$_GetAreasStarted;

  String get city;
  _$GetAreasStartedCopyWith<_GetAreasStarted> get copyWith;
}

/// @nodoc
abstract class _$AreasReceivedCopyWith<$Res> {
  factory _$AreasReceivedCopyWith(
          _AreasReceived value, $Res Function(_AreasReceived) then) =
      __$AreasReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<String>> failureOrPosts});
}

/// @nodoc
class __$AreasReceivedCopyWithImpl<$Res>
    extends _$PostFormAreasEventCopyWithImpl<$Res>
    implements _$AreasReceivedCopyWith<$Res> {
  __$AreasReceivedCopyWithImpl(
      _AreasReceived _value, $Res Function(_AreasReceived) _then)
      : super(_value, (v) => _then(v as _AreasReceived));

  @override
  _AreasReceived get _value => super._value as _AreasReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_AreasReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, KtList<String>>,
    ));
  }
}

/// @nodoc
class _$_AreasReceived implements _AreasReceived {
  const _$_AreasReceived(this.failureOrPosts) : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, KtList<String>> failureOrPosts;

  @override
  String toString() {
    return 'PostFormAreasEvent.areasReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AreasReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$AreasReceivedCopyWith<_AreasReceived> get copyWith =>
      __$AreasReceivedCopyWithImpl<_AreasReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAreasStarted(String city),
    @required
        Result areasReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  }) {
    assert(getAreasStarted != null);
    assert(areasReceived != null);
    return areasReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAreasStarted(String city),
    Result areasReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (areasReceived != null) {
      return areasReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAreasStarted(_GetAreasStarted value),
    @required Result areasReceived(_AreasReceived value),
  }) {
    assert(getAreasStarted != null);
    assert(areasReceived != null);
    return areasReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAreasStarted(_GetAreasStarted value),
    Result areasReceived(_AreasReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (areasReceived != null) {
      return areasReceived(this);
    }
    return orElse();
  }
}

abstract class _AreasReceived implements PostFormAreasEvent {
  const factory _AreasReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _$_AreasReceived;

  Either<PostFailure, KtList<String>> get failureOrPosts;
  _$AreasReceivedCopyWith<_AreasReceived> get copyWith;
}

/// @nodoc
class _$PostFormAreasStateTearOff {
  const _$PostFormAreasStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadAreasSuccess loadAreasSuccess(KtList<String> data) {
    return _LoadAreasSuccess(
      data,
    );
  }

// ignore: unused_element
  _LoadAreasFailure loadAreasFailure(PostFailure postFailure) {
    return _LoadAreasFailure(
      postFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormAreasState = _$PostFormAreasStateTearOff();

/// @nodoc
mixin _$PostFormAreasState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadAreasSuccess(KtList<String> data),
    @required Result loadAreasFailure(PostFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadAreasSuccess(KtList<String> data),
    Result loadAreasFailure(PostFailure postFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadAreasSuccess(_LoadAreasSuccess value),
    @required Result loadAreasFailure(_LoadAreasFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadAreasSuccess(_LoadAreasSuccess value),
    Result loadAreasFailure(_LoadAreasFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostFormAreasStateCopyWith<$Res> {
  factory $PostFormAreasStateCopyWith(
          PostFormAreasState value, $Res Function(PostFormAreasState) then) =
      _$PostFormAreasStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormAreasStateCopyWithImpl<$Res>
    implements $PostFormAreasStateCopyWith<$Res> {
  _$PostFormAreasStateCopyWithImpl(this._value, this._then);

  final PostFormAreasState _value;
  // ignore: unused_field
  final $Res Function(PostFormAreasState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PostFormAreasStateCopyWithImpl<$Res>
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
    return 'PostFormAreasState.initial()';
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
    @required Result loadAreasSuccess(KtList<String> data),
    @required Result loadAreasFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadAreasSuccess(KtList<String> data),
    Result loadAreasFailure(PostFailure postFailure),
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
    @required Result loadAreasSuccess(_LoadAreasSuccess value),
    @required Result loadAreasFailure(_LoadAreasFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadAreasSuccess(_LoadAreasSuccess value),
    Result loadAreasFailure(_LoadAreasFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostFormAreasState {
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
    extends _$PostFormAreasStateCopyWithImpl<$Res>
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
    return 'PostFormAreasState.loadInProgress()';
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
    @required Result loadAreasSuccess(KtList<String> data),
    @required Result loadAreasFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadAreasSuccess(KtList<String> data),
    Result loadAreasFailure(PostFailure postFailure),
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
    @required Result loadAreasSuccess(_LoadAreasSuccess value),
    @required Result loadAreasFailure(_LoadAreasFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadAreasSuccess(_LoadAreasSuccess value),
    Result loadAreasFailure(_LoadAreasFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PostFormAreasState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadAreasSuccessCopyWith<$Res> {
  factory _$LoadAreasSuccessCopyWith(
          _LoadAreasSuccess value, $Res Function(_LoadAreasSuccess) then) =
      __$LoadAreasSuccessCopyWithImpl<$Res>;
  $Res call({KtList<String> data});
}

/// @nodoc
class __$LoadAreasSuccessCopyWithImpl<$Res>
    extends _$PostFormAreasStateCopyWithImpl<$Res>
    implements _$LoadAreasSuccessCopyWith<$Res> {
  __$LoadAreasSuccessCopyWithImpl(
      _LoadAreasSuccess _value, $Res Function(_LoadAreasSuccess) _then)
      : super(_value, (v) => _then(v as _LoadAreasSuccess));

  @override
  _LoadAreasSuccess get _value => super._value as _LoadAreasSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LoadAreasSuccess(
      data == freezed ? _value.data : data as KtList<String>,
    ));
  }
}

/// @nodoc
class _$_LoadAreasSuccess implements _LoadAreasSuccess {
  const _$_LoadAreasSuccess(this.data) : assert(data != null);

  @override
  final KtList<String> data;

  @override
  String toString() {
    return 'PostFormAreasState.loadAreasSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadAreasSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$LoadAreasSuccessCopyWith<_LoadAreasSuccess> get copyWith =>
      __$LoadAreasSuccessCopyWithImpl<_LoadAreasSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadAreasSuccess(KtList<String> data),
    @required Result loadAreasFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return loadAreasSuccess(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadAreasSuccess(KtList<String> data),
    Result loadAreasFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAreasSuccess != null) {
      return loadAreasSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadAreasSuccess(_LoadAreasSuccess value),
    @required Result loadAreasFailure(_LoadAreasFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return loadAreasSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadAreasSuccess(_LoadAreasSuccess value),
    Result loadAreasFailure(_LoadAreasFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAreasSuccess != null) {
      return loadAreasSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAreasSuccess implements PostFormAreasState {
  const factory _LoadAreasSuccess(KtList<String> data) = _$_LoadAreasSuccess;

  KtList<String> get data;
  _$LoadAreasSuccessCopyWith<_LoadAreasSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadAreasFailureCopyWith<$Res> {
  factory _$LoadAreasFailureCopyWith(
          _LoadAreasFailure value, $Res Function(_LoadAreasFailure) then) =
      __$LoadAreasFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$LoadAreasFailureCopyWithImpl<$Res>
    extends _$PostFormAreasStateCopyWithImpl<$Res>
    implements _$LoadAreasFailureCopyWith<$Res> {
  __$LoadAreasFailureCopyWithImpl(
      _LoadAreasFailure _value, $Res Function(_LoadAreasFailure) _then)
      : super(_value, (v) => _then(v as _LoadAreasFailure));

  @override
  _LoadAreasFailure get _value => super._value as _LoadAreasFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(_LoadAreasFailure(
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
class _$_LoadAreasFailure implements _LoadAreasFailure {
  const _$_LoadAreasFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostFormAreasState.loadAreasFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadAreasFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  _$LoadAreasFailureCopyWith<_LoadAreasFailure> get copyWith =>
      __$LoadAreasFailureCopyWithImpl<_LoadAreasFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadAreasSuccess(KtList<String> data),
    @required Result loadAreasFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return loadAreasFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadAreasSuccess(KtList<String> data),
    Result loadAreasFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAreasFailure != null) {
      return loadAreasFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadAreasSuccess(_LoadAreasSuccess value),
    @required Result loadAreasFailure(_LoadAreasFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadAreasSuccess != null);
    assert(loadAreasFailure != null);
    return loadAreasFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadAreasSuccess(_LoadAreasSuccess value),
    Result loadAreasFailure(_LoadAreasFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAreasFailure != null) {
      return loadAreasFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAreasFailure implements PostFormAreasState {
  const factory _LoadAreasFailure(PostFailure postFailure) =
      _$_LoadAreasFailure;

  PostFailure get postFailure;
  _$LoadAreasFailureCopyWith<_LoadAreasFailure> get copyWith;
}
