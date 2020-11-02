// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostActorEventTearOff {
  const _$PostActorEventTearOff();

// ignore: unused_element
  _Liked liked(Post post) {
    return _Liked(
      post,
    );
  }

// ignore: unused_element
  _UnLiked unLiked(Post post) {
    return _UnLiked(
      post,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostActorEvent = _$PostActorEventTearOff();

/// @nodoc
mixin _$PostActorEvent {
  Post get post;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result liked(Post post),
    @required Result unLiked(Post post),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result liked(Post post),
    Result unLiked(Post post),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result liked(_Liked value),
    @required Result unLiked(_UnLiked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result liked(_Liked value),
    Result unLiked(_UnLiked value),
    @required Result orElse(),
  });

  $PostActorEventCopyWith<PostActorEvent> get copyWith;
}

/// @nodoc
abstract class $PostActorEventCopyWith<$Res> {
  factory $PostActorEventCopyWith(
          PostActorEvent value, $Res Function(PostActorEvent) then) =
      _$PostActorEventCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$PostActorEventCopyWithImpl<$Res>
    implements $PostActorEventCopyWith<$Res> {
  _$PostActorEventCopyWithImpl(this._value, this._then);

  final PostActorEvent _value;
  // ignore: unused_field
  final $Res Function(PostActorEvent) _then;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed ? _value.post : post as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> implements $PostActorEventCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  @override
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_Liked(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

/// @nodoc
class _$_Liked implements _Liked {
  const _$_Liked(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostActorEvent.liked(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result liked(Post post),
    @required Result unLiked(Post post),
  }) {
    assert(liked != null);
    assert(unLiked != null);
    return liked(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result liked(Post post),
    Result unLiked(Post post),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result liked(_Liked value),
    @required Result unLiked(_UnLiked value),
  }) {
    assert(liked != null);
    assert(unLiked != null);
    return liked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result liked(_Liked value),
    Result unLiked(_UnLiked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements PostActorEvent {
  const factory _Liked(Post post) = _$_Liked;

  @override
  Post get post;
  @override
  _$LikedCopyWith<_Liked> get copyWith;
}

/// @nodoc
abstract class _$UnLikedCopyWith<$Res>
    implements $PostActorEventCopyWith<$Res> {
  factory _$UnLikedCopyWith(_UnLiked value, $Res Function(_UnLiked) then) =
      __$UnLikedCopyWithImpl<$Res>;
  @override
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$UnLikedCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$UnLikedCopyWith<$Res> {
  __$UnLikedCopyWithImpl(_UnLiked _value, $Res Function(_UnLiked) _then)
      : super(_value, (v) => _then(v as _UnLiked));

  @override
  _UnLiked get _value => super._value as _UnLiked;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_UnLiked(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

/// @nodoc
class _$_UnLiked implements _UnLiked {
  const _$_UnLiked(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostActorEvent.unLiked(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnLiked &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$UnLikedCopyWith<_UnLiked> get copyWith =>
      __$UnLikedCopyWithImpl<_UnLiked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result liked(Post post),
    @required Result unLiked(Post post),
  }) {
    assert(liked != null);
    assert(unLiked != null);
    return unLiked(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result liked(Post post),
    Result unLiked(Post post),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unLiked != null) {
      return unLiked(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result liked(_Liked value),
    @required Result unLiked(_UnLiked value),
  }) {
    assert(liked != null);
    assert(unLiked != null);
    return unLiked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result liked(_Liked value),
    Result unLiked(_UnLiked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unLiked != null) {
      return unLiked(this);
    }
    return orElse();
  }
}

abstract class _UnLiked implements PostActorEvent {
  const factory _UnLiked(Post post) = _$_UnLiked;

  @override
  Post get post;
  @override
  _$UnLikedCopyWith<_UnLiked> get copyWith;
}

/// @nodoc
class _$PostActorStateTearOff {
  const _$PostActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _LikeFailure likeFailure(PostFailure postFailure) {
    return _LikeFailure(
      postFailure,
    );
  }

// ignore: unused_element
  _LikeSuccess likeSuccess() {
    return const _LikeSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $PostActorState = _$PostActorStateTearOff();

/// @nodoc
mixin _$PostActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likeFailure(PostFailure postFailure),
    @required Result likeSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likeFailure(PostFailure postFailure),
    Result likeSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likeFailure(_LikeFailure value),
    @required Result likeSuccess(_LikeSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likeFailure(_LikeFailure value),
    Result likeSuccess(_LikeSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostActorStateCopyWith<$Res> {
  factory $PostActorStateCopyWith(
          PostActorState value, $Res Function(PostActorState) then) =
      _$PostActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostActorStateCopyWithImpl<$Res>
    implements $PostActorStateCopyWith<$Res> {
  _$PostActorStateCopyWithImpl(this._value, this._then);

  final PostActorState _value;
  // ignore: unused_field
  final $Res Function(PostActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostActorStateCopyWithImpl<$Res>
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
    return 'PostActorState.initial()';
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
    @required Result likeFailure(PostFailure postFailure),
    @required Result likeSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likeFailure(PostFailure postFailure),
    Result likeSuccess(),
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
    @required Result likeFailure(_LikeFailure value),
    @required Result likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likeFailure(_LikeFailure value),
    Result likeSuccess(_LikeSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostActorState {
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
    extends _$PostActorStateCopyWithImpl<$Res>
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
    return 'PostActorState.actionInProgress()';
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
    @required Result likeFailure(PostFailure postFailure),
    @required Result likeSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likeFailure(PostFailure postFailure),
    Result likeSuccess(),
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
    @required Result likeFailure(_LikeFailure value),
    @required Result likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likeFailure(_LikeFailure value),
    Result likeSuccess(_LikeSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements PostActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$LikeFailureCopyWith<$Res> {
  factory _$LikeFailureCopyWith(
          _LikeFailure value, $Res Function(_LikeFailure) then) =
      __$LikeFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$LikeFailureCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$LikeFailureCopyWith<$Res> {
  __$LikeFailureCopyWithImpl(
      _LikeFailure _value, $Res Function(_LikeFailure) _then)
      : super(_value, (v) => _then(v as _LikeFailure));

  @override
  _LikeFailure get _value => super._value as _LikeFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(_LikeFailure(
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
class _$_LikeFailure implements _LikeFailure {
  const _$_LikeFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostActorState.likeFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      __$LikeFailureCopyWithImpl<_LikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likeFailure(PostFailure postFailure),
    @required Result likeSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likeFailure(PostFailure postFailure),
    Result likeSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeFailure != null) {
      return likeFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likeFailure(_LikeFailure value),
    @required Result likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likeFailure(_LikeFailure value),
    Result likeSuccess(_LikeSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeFailure != null) {
      return likeFailure(this);
    }
    return orElse();
  }
}

abstract class _LikeFailure implements PostActorState {
  const factory _LikeFailure(PostFailure postFailure) = _$_LikeFailure;

  PostFailure get postFailure;
  _$LikeFailureCopyWith<_LikeFailure> get copyWith;
}

/// @nodoc
abstract class _$LikeSuccessCopyWith<$Res> {
  factory _$LikeSuccessCopyWith(
          _LikeSuccess value, $Res Function(_LikeSuccess) then) =
      __$LikeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikeSuccessCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$LikeSuccessCopyWith<$Res> {
  __$LikeSuccessCopyWithImpl(
      _LikeSuccess _value, $Res Function(_LikeSuccess) _then)
      : super(_value, (v) => _then(v as _LikeSuccess));

  @override
  _LikeSuccess get _value => super._value as _LikeSuccess;
}

/// @nodoc
class _$_LikeSuccess implements _LikeSuccess {
  const _$_LikeSuccess();

  @override
  String toString() {
    return 'PostActorState.likeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LikeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likeFailure(PostFailure postFailure),
    @required Result likeSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likeFailure(PostFailure postFailure),
    Result likeSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSuccess != null) {
      return likeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likeFailure(_LikeFailure value),
    @required Result likeSuccess(_LikeSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likeFailure != null);
    assert(likeSuccess != null);
    return likeSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likeFailure(_LikeFailure value),
    Result likeSuccess(_LikeSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSuccess != null) {
      return likeSuccess(this);
    }
    return orElse();
  }
}

abstract class _LikeSuccess implements PostActorState {
  const factory _LikeSuccess() = _$_LikeSuccess;
}
