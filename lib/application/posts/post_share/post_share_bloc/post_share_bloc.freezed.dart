// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_share_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostShareEventTearOff {
  const _$PostShareEventTearOff();

// ignore: unused_element
  _ShareLinkRecevied shareLinkRecevied() {
    return const _ShareLinkRecevied();
  }

// ignore: unused_element
  _PostRecevied postRecevied(String postId) {
    return _PostRecevied(
      postId,
    );
  }

// ignore: unused_element
  _SharePostClicked sharePostClicked(
      String postId, String title, String description, String imageUrl) {
    return _SharePostClicked(
      postId,
      title,
      description,
      imageUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostShareEvent = _$PostShareEventTearOff();

/// @nodoc
mixin _$PostShareEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shareLinkRecevied(),
    @required Result postRecevied(String postId),
    @required
        Result sharePostClicked(
            String postId, String title, String description, String imageUrl),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shareLinkRecevied(),
    Result postRecevied(String postId),
    Result sharePostClicked(
        String postId, String title, String description, String imageUrl),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shareLinkRecevied(_ShareLinkRecevied value),
    @required Result postRecevied(_PostRecevied value),
    @required Result sharePostClicked(_SharePostClicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shareLinkRecevied(_ShareLinkRecevied value),
    Result postRecevied(_PostRecevied value),
    Result sharePostClicked(_SharePostClicked value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostShareEventCopyWith<$Res> {
  factory $PostShareEventCopyWith(
          PostShareEvent value, $Res Function(PostShareEvent) then) =
      _$PostShareEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostShareEventCopyWithImpl<$Res>
    implements $PostShareEventCopyWith<$Res> {
  _$PostShareEventCopyWithImpl(this._value, this._then);

  final PostShareEvent _value;
  // ignore: unused_field
  final $Res Function(PostShareEvent) _then;
}

/// @nodoc
abstract class _$ShareLinkReceviedCopyWith<$Res> {
  factory _$ShareLinkReceviedCopyWith(
          _ShareLinkRecevied value, $Res Function(_ShareLinkRecevied) then) =
      __$ShareLinkReceviedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShareLinkReceviedCopyWithImpl<$Res>
    extends _$PostShareEventCopyWithImpl<$Res>
    implements _$ShareLinkReceviedCopyWith<$Res> {
  __$ShareLinkReceviedCopyWithImpl(
      _ShareLinkRecevied _value, $Res Function(_ShareLinkRecevied) _then)
      : super(_value, (v) => _then(v as _ShareLinkRecevied));

  @override
  _ShareLinkRecevied get _value => super._value as _ShareLinkRecevied;
}

/// @nodoc
class _$_ShareLinkRecevied implements _ShareLinkRecevied {
  const _$_ShareLinkRecevied();

  @override
  String toString() {
    return 'PostShareEvent.shareLinkRecevied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShareLinkRecevied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shareLinkRecevied(),
    @required Result postRecevied(String postId),
    @required
        Result sharePostClicked(
            String postId, String title, String description, String imageUrl),
  }) {
    assert(shareLinkRecevied != null);
    assert(postRecevied != null);
    assert(sharePostClicked != null);
    return shareLinkRecevied();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shareLinkRecevied(),
    Result postRecevied(String postId),
    Result sharePostClicked(
        String postId, String title, String description, String imageUrl),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shareLinkRecevied != null) {
      return shareLinkRecevied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shareLinkRecevied(_ShareLinkRecevied value),
    @required Result postRecevied(_PostRecevied value),
    @required Result sharePostClicked(_SharePostClicked value),
  }) {
    assert(shareLinkRecevied != null);
    assert(postRecevied != null);
    assert(sharePostClicked != null);
    return shareLinkRecevied(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shareLinkRecevied(_ShareLinkRecevied value),
    Result postRecevied(_PostRecevied value),
    Result sharePostClicked(_SharePostClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shareLinkRecevied != null) {
      return shareLinkRecevied(this);
    }
    return orElse();
  }
}

abstract class _ShareLinkRecevied implements PostShareEvent {
  const factory _ShareLinkRecevied() = _$_ShareLinkRecevied;
}

/// @nodoc
abstract class _$PostReceviedCopyWith<$Res> {
  factory _$PostReceviedCopyWith(
          _PostRecevied value, $Res Function(_PostRecevied) then) =
      __$PostReceviedCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$PostReceviedCopyWithImpl<$Res>
    extends _$PostShareEventCopyWithImpl<$Res>
    implements _$PostReceviedCopyWith<$Res> {
  __$PostReceviedCopyWithImpl(
      _PostRecevied _value, $Res Function(_PostRecevied) _then)
      : super(_value, (v) => _then(v as _PostRecevied));

  @override
  _PostRecevied get _value => super._value as _PostRecevied;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_PostRecevied(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$_PostRecevied implements _PostRecevied {
  const _$_PostRecevied(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'PostShareEvent.postRecevied(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostRecevied &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  _$PostReceviedCopyWith<_PostRecevied> get copyWith =>
      __$PostReceviedCopyWithImpl<_PostRecevied>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shareLinkRecevied(),
    @required Result postRecevied(String postId),
    @required
        Result sharePostClicked(
            String postId, String title, String description, String imageUrl),
  }) {
    assert(shareLinkRecevied != null);
    assert(postRecevied != null);
    assert(sharePostClicked != null);
    return postRecevied(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shareLinkRecevied(),
    Result postRecevied(String postId),
    Result sharePostClicked(
        String postId, String title, String description, String imageUrl),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postRecevied != null) {
      return postRecevied(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shareLinkRecevied(_ShareLinkRecevied value),
    @required Result postRecevied(_PostRecevied value),
    @required Result sharePostClicked(_SharePostClicked value),
  }) {
    assert(shareLinkRecevied != null);
    assert(postRecevied != null);
    assert(sharePostClicked != null);
    return postRecevied(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shareLinkRecevied(_ShareLinkRecevied value),
    Result postRecevied(_PostRecevied value),
    Result sharePostClicked(_SharePostClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postRecevied != null) {
      return postRecevied(this);
    }
    return orElse();
  }
}

abstract class _PostRecevied implements PostShareEvent {
  const factory _PostRecevied(String postId) = _$_PostRecevied;

  String get postId;
  _$PostReceviedCopyWith<_PostRecevied> get copyWith;
}

/// @nodoc
abstract class _$SharePostClickedCopyWith<$Res> {
  factory _$SharePostClickedCopyWith(
          _SharePostClicked value, $Res Function(_SharePostClicked) then) =
      __$SharePostClickedCopyWithImpl<$Res>;
  $Res call({String postId, String title, String description, String imageUrl});
}

/// @nodoc
class __$SharePostClickedCopyWithImpl<$Res>
    extends _$PostShareEventCopyWithImpl<$Res>
    implements _$SharePostClickedCopyWith<$Res> {
  __$SharePostClickedCopyWithImpl(
      _SharePostClicked _value, $Res Function(_SharePostClicked) _then)
      : super(_value, (v) => _then(v as _SharePostClicked));

  @override
  _SharePostClicked get _value => super._value as _SharePostClicked;

  @override
  $Res call({
    Object postId = freezed,
    Object title = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_SharePostClicked(
      postId == freezed ? _value.postId : postId as String,
      title == freezed ? _value.title : title as String,
      description == freezed ? _value.description : description as String,
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
class _$_SharePostClicked implements _SharePostClicked {
  const _$_SharePostClicked(
      this.postId, this.title, this.description, this.imageUrl)
      : assert(postId != null),
        assert(title != null),
        assert(description != null),
        assert(imageUrl != null);

  @override
  final String postId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PostShareEvent.sharePostClicked(postId: $postId, title: $title, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SharePostClicked &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrl);

  @override
  _$SharePostClickedCopyWith<_SharePostClicked> get copyWith =>
      __$SharePostClickedCopyWithImpl<_SharePostClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shareLinkRecevied(),
    @required Result postRecevied(String postId),
    @required
        Result sharePostClicked(
            String postId, String title, String description, String imageUrl),
  }) {
    assert(shareLinkRecevied != null);
    assert(postRecevied != null);
    assert(sharePostClicked != null);
    return sharePostClicked(postId, title, description, imageUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shareLinkRecevied(),
    Result postRecevied(String postId),
    Result sharePostClicked(
        String postId, String title, String description, String imageUrl),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sharePostClicked != null) {
      return sharePostClicked(postId, title, description, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shareLinkRecevied(_ShareLinkRecevied value),
    @required Result postRecevied(_PostRecevied value),
    @required Result sharePostClicked(_SharePostClicked value),
  }) {
    assert(shareLinkRecevied != null);
    assert(postRecevied != null);
    assert(sharePostClicked != null);
    return sharePostClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shareLinkRecevied(_ShareLinkRecevied value),
    Result postRecevied(_PostRecevied value),
    Result sharePostClicked(_SharePostClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sharePostClicked != null) {
      return sharePostClicked(this);
    }
    return orElse();
  }
}

abstract class _SharePostClicked implements PostShareEvent {
  const factory _SharePostClicked(
          String postId, String title, String description, String imageUrl) =
      _$_SharePostClicked;

  String get postId;
  String get title;
  String get description;
  String get imageUrl;
  _$SharePostClickedCopyWith<_SharePostClicked> get copyWith;
}

/// @nodoc
class _$PostShareStateTearOff {
  const _$PostShareStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _ReceviedShareLink receviedShareLink(Post post) {
    return _ReceviedShareLink(
      post,
    );
  }

// ignore: unused_element
  _ReceviedError receviedError() {
    return const _ReceviedError();
  }
}

/// @nodoc
// ignore: unused_element
const $PostShareState = _$PostShareStateTearOff();

/// @nodoc
mixin _$PostShareState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result receviedShareLink(Post post),
    @required Result receviedError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result receviedShareLink(Post post),
    Result receviedError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result receviedShareLink(_ReceviedShareLink value),
    @required Result receviedError(_ReceviedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result receviedShareLink(_ReceviedShareLink value),
    Result receviedError(_ReceviedError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostShareStateCopyWith<$Res> {
  factory $PostShareStateCopyWith(
          PostShareState value, $Res Function(PostShareState) then) =
      _$PostShareStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostShareStateCopyWithImpl<$Res>
    implements $PostShareStateCopyWith<$Res> {
  _$PostShareStateCopyWithImpl(this._value, this._then);

  final PostShareState _value;
  // ignore: unused_field
  final $Res Function(PostShareState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostShareStateCopyWithImpl<$Res>
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
    return 'PostShareState.initial()';
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
    @required Result receviedShareLink(Post post),
    @required Result receviedError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result receviedShareLink(Post post),
    Result receviedError(),
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
    @required Result receviedShareLink(_ReceviedShareLink value),
    @required Result receviedError(_ReceviedError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result receviedShareLink(_ReceviedShareLink value),
    Result receviedError(_ReceviedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostShareState {
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
    extends _$PostShareStateCopyWithImpl<$Res>
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
    return 'PostShareState.loadInProgress()';
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
    @required Result receviedShareLink(Post post),
    @required Result receviedError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result receviedShareLink(Post post),
    Result receviedError(),
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
    @required Result receviedShareLink(_ReceviedShareLink value),
    @required Result receviedError(_ReceviedError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result receviedShareLink(_ReceviedShareLink value),
    Result receviedError(_ReceviedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PostShareState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$ReceviedShareLinkCopyWith<$Res> {
  factory _$ReceviedShareLinkCopyWith(
          _ReceviedShareLink value, $Res Function(_ReceviedShareLink) then) =
      __$ReceviedShareLinkCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$ReceviedShareLinkCopyWithImpl<$Res>
    extends _$PostShareStateCopyWithImpl<$Res>
    implements _$ReceviedShareLinkCopyWith<$Res> {
  __$ReceviedShareLinkCopyWithImpl(
      _ReceviedShareLink _value, $Res Function(_ReceviedShareLink) _then)
      : super(_value, (v) => _then(v as _ReceviedShareLink));

  @override
  _ReceviedShareLink get _value => super._value as _ReceviedShareLink;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_ReceviedShareLink(
      post == freezed ? _value.post : post as Post,
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
class _$_ReceviedShareLink implements _ReceviedShareLink {
  const _$_ReceviedShareLink(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostShareState.receviedShareLink(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReceviedShareLink &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$ReceviedShareLinkCopyWith<_ReceviedShareLink> get copyWith =>
      __$ReceviedShareLinkCopyWithImpl<_ReceviedShareLink>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result receviedShareLink(Post post),
    @required Result receviedError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return receviedShareLink(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result receviedShareLink(Post post),
    Result receviedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receviedShareLink != null) {
      return receviedShareLink(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result receviedShareLink(_ReceviedShareLink value),
    @required Result receviedError(_ReceviedError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return receviedShareLink(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result receviedShareLink(_ReceviedShareLink value),
    Result receviedError(_ReceviedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receviedShareLink != null) {
      return receviedShareLink(this);
    }
    return orElse();
  }
}

abstract class _ReceviedShareLink implements PostShareState {
  const factory _ReceviedShareLink(Post post) = _$_ReceviedShareLink;

  Post get post;
  _$ReceviedShareLinkCopyWith<_ReceviedShareLink> get copyWith;
}

/// @nodoc
abstract class _$ReceviedErrorCopyWith<$Res> {
  factory _$ReceviedErrorCopyWith(
          _ReceviedError value, $Res Function(_ReceviedError) then) =
      __$ReceviedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReceviedErrorCopyWithImpl<$Res>
    extends _$PostShareStateCopyWithImpl<$Res>
    implements _$ReceviedErrorCopyWith<$Res> {
  __$ReceviedErrorCopyWithImpl(
      _ReceviedError _value, $Res Function(_ReceviedError) _then)
      : super(_value, (v) => _then(v as _ReceviedError));

  @override
  _ReceviedError get _value => super._value as _ReceviedError;
}

/// @nodoc
class _$_ReceviedError implements _ReceviedError {
  const _$_ReceviedError();

  @override
  String toString() {
    return 'PostShareState.receviedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReceviedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result receviedShareLink(Post post),
    @required Result receviedError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return receviedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result receviedShareLink(Post post),
    Result receviedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receviedError != null) {
      return receviedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result receviedShareLink(_ReceviedShareLink value),
    @required Result receviedError(_ReceviedError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(receviedShareLink != null);
    assert(receviedError != null);
    return receviedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result receviedShareLink(_ReceviedShareLink value),
    Result receviedError(_ReceviedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receviedError != null) {
      return receviedError(this);
    }
    return orElse();
  }
}

abstract class _ReceviedError implements PostShareState {
  const factory _ReceviedError() = _$_ReceviedError;
}
