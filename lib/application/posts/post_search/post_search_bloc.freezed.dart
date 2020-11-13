// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostSearchEventTearOff {
  const _$PostSearchEventTearOff();

// ignore: unused_element
  _SearchChanged searchChanged(String searchStr) {
    return _SearchChanged(
      searchStr,
    );
  }

// ignore: unused_element
  _PostsRecevied postsRecevied(
      Either<PostFailure, KtList<Post>> failureOrPosts) {
    return _PostsRecevied(
      failureOrPosts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostSearchEvent = _$PostSearchEventTearOff();

/// @nodoc
mixin _$PostSearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchChanged(String searchStr),
    @required
        Result postsRecevied(Either<PostFailure, KtList<Post>> failureOrPosts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchChanged(String searchStr),
    Result postsRecevied(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchChanged(_SearchChanged value),
    @required Result postsRecevied(_PostsRecevied value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchChanged(_SearchChanged value),
    Result postsRecevied(_PostsRecevied value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostSearchEventCopyWith<$Res> {
  factory $PostSearchEventCopyWith(
          PostSearchEvent value, $Res Function(PostSearchEvent) then) =
      _$PostSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostSearchEventCopyWithImpl<$Res>
    implements $PostSearchEventCopyWith<$Res> {
  _$PostSearchEventCopyWithImpl(this._value, this._then);

  final PostSearchEvent _value;
  // ignore: unused_field
  final $Res Function(PostSearchEvent) _then;
}

/// @nodoc
abstract class _$SearchChangedCopyWith<$Res> {
  factory _$SearchChangedCopyWith(
          _SearchChanged value, $Res Function(_SearchChanged) then) =
      __$SearchChangedCopyWithImpl<$Res>;
  $Res call({String searchStr});
}

/// @nodoc
class __$SearchChangedCopyWithImpl<$Res>
    extends _$PostSearchEventCopyWithImpl<$Res>
    implements _$SearchChangedCopyWith<$Res> {
  __$SearchChangedCopyWithImpl(
      _SearchChanged _value, $Res Function(_SearchChanged) _then)
      : super(_value, (v) => _then(v as _SearchChanged));

  @override
  _SearchChanged get _value => super._value as _SearchChanged;

  @override
  $Res call({
    Object searchStr = freezed,
  }) {
    return _then(_SearchChanged(
      searchStr == freezed ? _value.searchStr : searchStr as String,
    ));
  }
}

/// @nodoc
class _$_SearchChanged implements _SearchChanged {
  const _$_SearchChanged(this.searchStr) : assert(searchStr != null);

  @override
  final String searchStr;

  @override
  String toString() {
    return 'PostSearchEvent.searchChanged(searchStr: $searchStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchChanged &&
            (identical(other.searchStr, searchStr) ||
                const DeepCollectionEquality()
                    .equals(other.searchStr, searchStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchStr);

  @override
  _$SearchChangedCopyWith<_SearchChanged> get copyWith =>
      __$SearchChangedCopyWithImpl<_SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchChanged(String searchStr),
    @required
        Result postsRecevied(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(searchChanged != null);
    assert(postsRecevied != null);
    return searchChanged(searchStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchChanged(String searchStr),
    Result postsRecevied(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(searchStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchChanged(_SearchChanged value),
    @required Result postsRecevied(_PostsRecevied value),
  }) {
    assert(searchChanged != null);
    assert(postsRecevied != null);
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchChanged(_SearchChanged value),
    Result postsRecevied(_PostsRecevied value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements PostSearchEvent {
  const factory _SearchChanged(String searchStr) = _$_SearchChanged;

  String get searchStr;
  _$SearchChangedCopyWith<_SearchChanged> get copyWith;
}

/// @nodoc
abstract class _$PostsReceviedCopyWith<$Res> {
  factory _$PostsReceviedCopyWith(
          _PostsRecevied value, $Res Function(_PostsRecevied) then) =
      __$PostsReceviedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<Post>> failureOrPosts});
}

/// @nodoc
class __$PostsReceviedCopyWithImpl<$Res>
    extends _$PostSearchEventCopyWithImpl<$Res>
    implements _$PostsReceviedCopyWith<$Res> {
  __$PostsReceviedCopyWithImpl(
      _PostsRecevied _value, $Res Function(_PostsRecevied) _then)
      : super(_value, (v) => _then(v as _PostsRecevied));

  @override
  _PostsRecevied get _value => super._value as _PostsRecevied;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_PostsRecevied(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, KtList<Post>>,
    ));
  }
}

/// @nodoc
class _$_PostsRecevied implements _PostsRecevied {
  const _$_PostsRecevied(this.failureOrPosts) : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, KtList<Post>> failureOrPosts;

  @override
  String toString() {
    return 'PostSearchEvent.postsRecevied(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsRecevied &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$PostsReceviedCopyWith<_PostsRecevied> get copyWith =>
      __$PostsReceviedCopyWithImpl<_PostsRecevied>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchChanged(String searchStr),
    @required
        Result postsRecevied(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(searchChanged != null);
    assert(postsRecevied != null);
    return postsRecevied(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchChanged(String searchStr),
    Result postsRecevied(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsRecevied != null) {
      return postsRecevied(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchChanged(_SearchChanged value),
    @required Result postsRecevied(_PostsRecevied value),
  }) {
    assert(searchChanged != null);
    assert(postsRecevied != null);
    return postsRecevied(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchChanged(_SearchChanged value),
    Result postsRecevied(_PostsRecevied value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsRecevied != null) {
      return postsRecevied(this);
    }
    return orElse();
  }
}

abstract class _PostsRecevied implements PostSearchEvent {
  const factory _PostsRecevied(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _$_PostsRecevied;

  Either<PostFailure, KtList<Post>> get failureOrPosts;
  _$PostsReceviedCopyWith<_PostsRecevied> get copyWith;
}

/// @nodoc
class _$PostSearchStateTearOff {
  const _$PostSearchStateTearOff();

// ignore: unused_element
  _PostSearchState call(
      {@required bool isLoading,
      @required Either<PostFailure, KtList<Post>> saveFailureOrSuccessOption}) {
    return _PostSearchState(
      isLoading: isLoading,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostSearchState = _$PostSearchStateTearOff();

/// @nodoc
mixin _$PostSearchState {
// @required KtList<Post> posts,
// @required String searchForm,
  bool get isLoading; // @required bool isSubmitting,
  Either<PostFailure, KtList<Post>> get saveFailureOrSuccessOption;

  $PostSearchStateCopyWith<PostSearchState> get copyWith;
}

/// @nodoc
abstract class $PostSearchStateCopyWith<$Res> {
  factory $PostSearchStateCopyWith(
          PostSearchState value, $Res Function(PostSearchState) then) =
      _$PostSearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<PostFailure, KtList<Post>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$PostSearchStateCopyWithImpl<$Res>
    implements $PostSearchStateCopyWith<$Res> {
  _$PostSearchStateCopyWithImpl(this._value, this._then);

  final PostSearchState _value;
  // ignore: unused_field
  final $Res Function(PostSearchState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Either<PostFailure, KtList<Post>>,
    ));
  }
}

/// @nodoc
abstract class _$PostSearchStateCopyWith<$Res>
    implements $PostSearchStateCopyWith<$Res> {
  factory _$PostSearchStateCopyWith(
          _PostSearchState value, $Res Function(_PostSearchState) then) =
      __$PostSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<PostFailure, KtList<Post>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$PostSearchStateCopyWithImpl<$Res>
    extends _$PostSearchStateCopyWithImpl<$Res>
    implements _$PostSearchStateCopyWith<$Res> {
  __$PostSearchStateCopyWithImpl(
      _PostSearchState _value, $Res Function(_PostSearchState) _then)
      : super(_value, (v) => _then(v as _PostSearchState));

  @override
  _PostSearchState get _value => super._value as _PostSearchState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_PostSearchState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Either<PostFailure, KtList<Post>>,
    ));
  }
}

/// @nodoc
class _$_PostSearchState implements _PostSearchState {
  const _$_PostSearchState(
      {@required this.isLoading, @required this.saveFailureOrSuccessOption})
      : assert(isLoading != null),
        assert(saveFailureOrSuccessOption != null);

  @override // @required KtList<Post> posts,
// @required String searchForm,
  final bool isLoading;
  @override // @required bool isSubmitting,
  final Either<PostFailure, KtList<Post>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PostSearchState(isLoading: $isLoading, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostSearchState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$PostSearchStateCopyWith<_PostSearchState> get copyWith =>
      __$PostSearchStateCopyWithImpl<_PostSearchState>(this, _$identity);
}

abstract class _PostSearchState implements PostSearchState {
  const factory _PostSearchState(
          {@required
              bool isLoading,
          @required
              Either<PostFailure, KtList<Post>> saveFailureOrSuccessOption}) =
      _$_PostSearchState;

  @override // @required KtList<Post> posts,
// @required String searchForm,
  bool get isLoading;
  @override // @required bool isSubmitting,
  Either<PostFailure, KtList<Post>> get saveFailureOrSuccessOption;
  @override
  _$PostSearchStateCopyWith<_PostSearchState> get copyWith;
}
