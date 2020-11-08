// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_form_brands_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostFormBrandsEventTearOff {
  const _$PostFormBrandsEventTearOff();

// ignore: unused_element
  _GetBrandsStarted getBrandsStarted() {
    return const _GetBrandsStarted();
  }

// ignore: unused_element
  _BrandsReceived brandsReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) {
    return _BrandsReceived(
      failureOrPosts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormBrandsEvent = _$PostFormBrandsEventTearOff();

/// @nodoc
mixin _$PostFormBrandsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBrandsStarted(),
    @required
        Result brandsReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBrandsStarted(),
    Result brandsReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBrandsStarted(_GetBrandsStarted value),
    @required Result brandsReceived(_BrandsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBrandsStarted(_GetBrandsStarted value),
    Result brandsReceived(_BrandsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostFormBrandsEventCopyWith<$Res> {
  factory $PostFormBrandsEventCopyWith(
          PostFormBrandsEvent value, $Res Function(PostFormBrandsEvent) then) =
      _$PostFormBrandsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormBrandsEventCopyWithImpl<$Res>
    implements $PostFormBrandsEventCopyWith<$Res> {
  _$PostFormBrandsEventCopyWithImpl(this._value, this._then);

  final PostFormBrandsEvent _value;
  // ignore: unused_field
  final $Res Function(PostFormBrandsEvent) _then;
}

/// @nodoc
abstract class _$GetBrandsStartedCopyWith<$Res> {
  factory _$GetBrandsStartedCopyWith(
          _GetBrandsStarted value, $Res Function(_GetBrandsStarted) then) =
      __$GetBrandsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBrandsStartedCopyWithImpl<$Res>
    extends _$PostFormBrandsEventCopyWithImpl<$Res>
    implements _$GetBrandsStartedCopyWith<$Res> {
  __$GetBrandsStartedCopyWithImpl(
      _GetBrandsStarted _value, $Res Function(_GetBrandsStarted) _then)
      : super(_value, (v) => _then(v as _GetBrandsStarted));

  @override
  _GetBrandsStarted get _value => super._value as _GetBrandsStarted;
}

/// @nodoc
class _$_GetBrandsStarted implements _GetBrandsStarted {
  const _$_GetBrandsStarted();

  @override
  String toString() {
    return 'PostFormBrandsEvent.getBrandsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetBrandsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBrandsStarted(),
    @required
        Result brandsReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  }) {
    assert(getBrandsStarted != null);
    assert(brandsReceived != null);
    return getBrandsStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBrandsStarted(),
    Result brandsReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBrandsStarted != null) {
      return getBrandsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBrandsStarted(_GetBrandsStarted value),
    @required Result brandsReceived(_BrandsReceived value),
  }) {
    assert(getBrandsStarted != null);
    assert(brandsReceived != null);
    return getBrandsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBrandsStarted(_GetBrandsStarted value),
    Result brandsReceived(_BrandsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBrandsStarted != null) {
      return getBrandsStarted(this);
    }
    return orElse();
  }
}

abstract class _GetBrandsStarted implements PostFormBrandsEvent {
  const factory _GetBrandsStarted() = _$_GetBrandsStarted;
}

/// @nodoc
abstract class _$BrandsReceivedCopyWith<$Res> {
  factory _$BrandsReceivedCopyWith(
          _BrandsReceived value, $Res Function(_BrandsReceived) then) =
      __$BrandsReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<String>> failureOrPosts});
}

/// @nodoc
class __$BrandsReceivedCopyWithImpl<$Res>
    extends _$PostFormBrandsEventCopyWithImpl<$Res>
    implements _$BrandsReceivedCopyWith<$Res> {
  __$BrandsReceivedCopyWithImpl(
      _BrandsReceived _value, $Res Function(_BrandsReceived) _then)
      : super(_value, (v) => _then(v as _BrandsReceived));

  @override
  _BrandsReceived get _value => super._value as _BrandsReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_BrandsReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, KtList<String>>,
    ));
  }
}

/// @nodoc
class _$_BrandsReceived implements _BrandsReceived {
  const _$_BrandsReceived(this.failureOrPosts) : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, KtList<String>> failureOrPosts;

  @override
  String toString() {
    return 'PostFormBrandsEvent.brandsReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrandsReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$BrandsReceivedCopyWith<_BrandsReceived> get copyWith =>
      __$BrandsReceivedCopyWithImpl<_BrandsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getBrandsStarted(),
    @required
        Result brandsReceived(
            Either<PostFailure, KtList<String>> failureOrPosts),
  }) {
    assert(getBrandsStarted != null);
    assert(brandsReceived != null);
    return brandsReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getBrandsStarted(),
    Result brandsReceived(Either<PostFailure, KtList<String>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (brandsReceived != null) {
      return brandsReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getBrandsStarted(_GetBrandsStarted value),
    @required Result brandsReceived(_BrandsReceived value),
  }) {
    assert(getBrandsStarted != null);
    assert(brandsReceived != null);
    return brandsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getBrandsStarted(_GetBrandsStarted value),
    Result brandsReceived(_BrandsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (brandsReceived != null) {
      return brandsReceived(this);
    }
    return orElse();
  }
}

abstract class _BrandsReceived implements PostFormBrandsEvent {
  const factory _BrandsReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _$_BrandsReceived;

  Either<PostFailure, KtList<String>> get failureOrPosts;
  _$BrandsReceivedCopyWith<_BrandsReceived> get copyWith;
}

/// @nodoc
class _$PostFormBrandsStateTearOff {
  const _$PostFormBrandsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadBrandsSuccess loadBrandsSuccess(KtList<String> data) {
    return _LoadBrandsSuccess(
      data,
    );
  }

// ignore: unused_element
  _LoadBrandsFailure loadBrandsFailure(PostFailure postFailure) {
    return _LoadBrandsFailure(
      postFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostFormBrandsState = _$PostFormBrandsStateTearOff();

/// @nodoc
mixin _$PostFormBrandsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadBrandsSuccess(KtList<String> data),
    @required Result loadBrandsFailure(PostFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadBrandsSuccess(KtList<String> data),
    Result loadBrandsFailure(PostFailure postFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadBrandsSuccess(_LoadBrandsSuccess value),
    @required Result loadBrandsFailure(_LoadBrandsFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadBrandsSuccess(_LoadBrandsSuccess value),
    Result loadBrandsFailure(_LoadBrandsFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostFormBrandsStateCopyWith<$Res> {
  factory $PostFormBrandsStateCopyWith(
          PostFormBrandsState value, $Res Function(PostFormBrandsState) then) =
      _$PostFormBrandsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormBrandsStateCopyWithImpl<$Res>
    implements $PostFormBrandsStateCopyWith<$Res> {
  _$PostFormBrandsStateCopyWithImpl(this._value, this._then);

  final PostFormBrandsState _value;
  // ignore: unused_field
  final $Res Function(PostFormBrandsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PostFormBrandsStateCopyWithImpl<$Res>
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
    return 'PostFormBrandsState.initial()';
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
    @required Result loadBrandsSuccess(KtList<String> data),
    @required Result loadBrandsFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadBrandsSuccess(KtList<String> data),
    Result loadBrandsFailure(PostFailure postFailure),
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
    @required Result loadBrandsSuccess(_LoadBrandsSuccess value),
    @required Result loadBrandsFailure(_LoadBrandsFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadBrandsSuccess(_LoadBrandsSuccess value),
    Result loadBrandsFailure(_LoadBrandsFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostFormBrandsState {
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
    extends _$PostFormBrandsStateCopyWithImpl<$Res>
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
    return 'PostFormBrandsState.loadInProgress()';
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
    @required Result loadBrandsSuccess(KtList<String> data),
    @required Result loadBrandsFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadBrandsSuccess(KtList<String> data),
    Result loadBrandsFailure(PostFailure postFailure),
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
    @required Result loadBrandsSuccess(_LoadBrandsSuccess value),
    @required Result loadBrandsFailure(_LoadBrandsFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadBrandsSuccess(_LoadBrandsSuccess value),
    Result loadBrandsFailure(_LoadBrandsFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PostFormBrandsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadBrandsSuccessCopyWith<$Res> {
  factory _$LoadBrandsSuccessCopyWith(
          _LoadBrandsSuccess value, $Res Function(_LoadBrandsSuccess) then) =
      __$LoadBrandsSuccessCopyWithImpl<$Res>;
  $Res call({KtList<String> data});
}

/// @nodoc
class __$LoadBrandsSuccessCopyWithImpl<$Res>
    extends _$PostFormBrandsStateCopyWithImpl<$Res>
    implements _$LoadBrandsSuccessCopyWith<$Res> {
  __$LoadBrandsSuccessCopyWithImpl(
      _LoadBrandsSuccess _value, $Res Function(_LoadBrandsSuccess) _then)
      : super(_value, (v) => _then(v as _LoadBrandsSuccess));

  @override
  _LoadBrandsSuccess get _value => super._value as _LoadBrandsSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LoadBrandsSuccess(
      data == freezed ? _value.data : data as KtList<String>,
    ));
  }
}

/// @nodoc
class _$_LoadBrandsSuccess implements _LoadBrandsSuccess {
  const _$_LoadBrandsSuccess(this.data) : assert(data != null);

  @override
  final KtList<String> data;

  @override
  String toString() {
    return 'PostFormBrandsState.loadBrandsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadBrandsSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$LoadBrandsSuccessCopyWith<_LoadBrandsSuccess> get copyWith =>
      __$LoadBrandsSuccessCopyWithImpl<_LoadBrandsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadBrandsSuccess(KtList<String> data),
    @required Result loadBrandsFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return loadBrandsSuccess(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadBrandsSuccess(KtList<String> data),
    Result loadBrandsFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadBrandsSuccess != null) {
      return loadBrandsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadBrandsSuccess(_LoadBrandsSuccess value),
    @required Result loadBrandsFailure(_LoadBrandsFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return loadBrandsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadBrandsSuccess(_LoadBrandsSuccess value),
    Result loadBrandsFailure(_LoadBrandsFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadBrandsSuccess != null) {
      return loadBrandsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadBrandsSuccess implements PostFormBrandsState {
  const factory _LoadBrandsSuccess(KtList<String> data) = _$_LoadBrandsSuccess;

  KtList<String> get data;
  _$LoadBrandsSuccessCopyWith<_LoadBrandsSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadBrandsFailureCopyWith<$Res> {
  factory _$LoadBrandsFailureCopyWith(
          _LoadBrandsFailure value, $Res Function(_LoadBrandsFailure) then) =
      __$LoadBrandsFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$LoadBrandsFailureCopyWithImpl<$Res>
    extends _$PostFormBrandsStateCopyWithImpl<$Res>
    implements _$LoadBrandsFailureCopyWith<$Res> {
  __$LoadBrandsFailureCopyWithImpl(
      _LoadBrandsFailure _value, $Res Function(_LoadBrandsFailure) _then)
      : super(_value, (v) => _then(v as _LoadBrandsFailure));

  @override
  _LoadBrandsFailure get _value => super._value as _LoadBrandsFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(_LoadBrandsFailure(
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
class _$_LoadBrandsFailure implements _LoadBrandsFailure {
  const _$_LoadBrandsFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostFormBrandsState.loadBrandsFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadBrandsFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  _$LoadBrandsFailureCopyWith<_LoadBrandsFailure> get copyWith =>
      __$LoadBrandsFailureCopyWithImpl<_LoadBrandsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadBrandsSuccess(KtList<String> data),
    @required Result loadBrandsFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return loadBrandsFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadBrandsSuccess(KtList<String> data),
    Result loadBrandsFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadBrandsFailure != null) {
      return loadBrandsFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadBrandsSuccess(_LoadBrandsSuccess value),
    @required Result loadBrandsFailure(_LoadBrandsFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadBrandsSuccess != null);
    assert(loadBrandsFailure != null);
    return loadBrandsFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadBrandsSuccess(_LoadBrandsSuccess value),
    Result loadBrandsFailure(_LoadBrandsFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadBrandsFailure != null) {
      return loadBrandsFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadBrandsFailure implements PostFormBrandsState {
  const factory _LoadBrandsFailure(PostFailure postFailure) =
      _$_LoadBrandsFailure;

  PostFailure get postFailure;
  _$LoadBrandsFailureCopyWith<_LoadBrandsFailure> get copyWith;
}
