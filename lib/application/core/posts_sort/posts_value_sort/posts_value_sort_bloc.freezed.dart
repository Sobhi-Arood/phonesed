// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'posts_value_sort_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostsValueSortEventTearOff {
  const _$PostsValueSortEventTearOff();

// ignore: unused_element
  _SortValueChanged sortValueChanged(String value) {
    return _SortValueChanged(
      value,
    );
  }

// ignore: unused_element
  _SortValueRecevied sortValueRecevied(KtList<Post> posts) {
    return _SortValueRecevied(
      posts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostsValueSortEvent = _$PostsValueSortEventTearOff();

/// @nodoc
mixin _$PostsValueSortEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sortValueChanged(String value),
    @required Result sortValueRecevied(KtList<Post> posts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sortValueChanged(String value),
    Result sortValueRecevied(KtList<Post> posts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sortValueChanged(_SortValueChanged value),
    @required Result sortValueRecevied(_SortValueRecevied value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sortValueChanged(_SortValueChanged value),
    Result sortValueRecevied(_SortValueRecevied value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostsValueSortEventCopyWith<$Res> {
  factory $PostsValueSortEventCopyWith(
          PostsValueSortEvent value, $Res Function(PostsValueSortEvent) then) =
      _$PostsValueSortEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsValueSortEventCopyWithImpl<$Res>
    implements $PostsValueSortEventCopyWith<$Res> {
  _$PostsValueSortEventCopyWithImpl(this._value, this._then);

  final PostsValueSortEvent _value;
  // ignore: unused_field
  final $Res Function(PostsValueSortEvent) _then;
}

/// @nodoc
abstract class _$SortValueChangedCopyWith<$Res> {
  factory _$SortValueChangedCopyWith(
          _SortValueChanged value, $Res Function(_SortValueChanged) then) =
      __$SortValueChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$SortValueChangedCopyWithImpl<$Res>
    extends _$PostsValueSortEventCopyWithImpl<$Res>
    implements _$SortValueChangedCopyWith<$Res> {
  __$SortValueChangedCopyWithImpl(
      _SortValueChanged _value, $Res Function(_SortValueChanged) _then)
      : super(_value, (v) => _then(v as _SortValueChanged));

  @override
  _SortValueChanged get _value => super._value as _SortValueChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_SortValueChanged(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_SortValueChanged implements _SortValueChanged {
  const _$_SortValueChanged(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'PostsValueSortEvent.sortValueChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SortValueChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$SortValueChangedCopyWith<_SortValueChanged> get copyWith =>
      __$SortValueChangedCopyWithImpl<_SortValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sortValueChanged(String value),
    @required Result sortValueRecevied(KtList<Post> posts),
  }) {
    assert(sortValueChanged != null);
    assert(sortValueRecevied != null);
    return sortValueChanged(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sortValueChanged(String value),
    Result sortValueRecevied(KtList<Post> posts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortValueChanged != null) {
      return sortValueChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sortValueChanged(_SortValueChanged value),
    @required Result sortValueRecevied(_SortValueRecevied value),
  }) {
    assert(sortValueChanged != null);
    assert(sortValueRecevied != null);
    return sortValueChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sortValueChanged(_SortValueChanged value),
    Result sortValueRecevied(_SortValueRecevied value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortValueChanged != null) {
      return sortValueChanged(this);
    }
    return orElse();
  }
}

abstract class _SortValueChanged implements PostsValueSortEvent {
  const factory _SortValueChanged(String value) = _$_SortValueChanged;

  String get value;
  _$SortValueChangedCopyWith<_SortValueChanged> get copyWith;
}

/// @nodoc
abstract class _$SortValueReceviedCopyWith<$Res> {
  factory _$SortValueReceviedCopyWith(
          _SortValueRecevied value, $Res Function(_SortValueRecevied) then) =
      __$SortValueReceviedCopyWithImpl<$Res>;
  $Res call({KtList<Post> posts});
}

/// @nodoc
class __$SortValueReceviedCopyWithImpl<$Res>
    extends _$PostsValueSortEventCopyWithImpl<$Res>
    implements _$SortValueReceviedCopyWith<$Res> {
  __$SortValueReceviedCopyWithImpl(
      _SortValueRecevied _value, $Res Function(_SortValueRecevied) _then)
      : super(_value, (v) => _then(v as _SortValueRecevied));

  @override
  _SortValueRecevied get _value => super._value as _SortValueRecevied;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_SortValueRecevied(
      posts == freezed ? _value.posts : posts as KtList<Post>,
    ));
  }
}

/// @nodoc
class _$_SortValueRecevied implements _SortValueRecevied {
  const _$_SortValueRecevied(this.posts) : assert(posts != null);

  @override
  final KtList<Post> posts;

  @override
  String toString() {
    return 'PostsValueSortEvent.sortValueRecevied(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SortValueRecevied &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  _$SortValueReceviedCopyWith<_SortValueRecevied> get copyWith =>
      __$SortValueReceviedCopyWithImpl<_SortValueRecevied>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sortValueChanged(String value),
    @required Result sortValueRecevied(KtList<Post> posts),
  }) {
    assert(sortValueChanged != null);
    assert(sortValueRecevied != null);
    return sortValueRecevied(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sortValueChanged(String value),
    Result sortValueRecevied(KtList<Post> posts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortValueRecevied != null) {
      return sortValueRecevied(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sortValueChanged(_SortValueChanged value),
    @required Result sortValueRecevied(_SortValueRecevied value),
  }) {
    assert(sortValueChanged != null);
    assert(sortValueRecevied != null);
    return sortValueRecevied(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sortValueChanged(_SortValueChanged value),
    Result sortValueRecevied(_SortValueRecevied value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortValueRecevied != null) {
      return sortValueRecevied(this);
    }
    return orElse();
  }
}

abstract class _SortValueRecevied implements PostsValueSortEvent {
  const factory _SortValueRecevied(KtList<Post> posts) = _$_SortValueRecevied;

  KtList<Post> get posts;
  _$SortValueReceviedCopyWith<_SortValueRecevied> get copyWith;
}

/// @nodoc
class _$PostsValueSortStateTearOff {
  const _$PostsValueSortStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _SortValue sortValue(KtList<Post> sortValue) {
    return _SortValue(
      sortValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostsValueSortState = _$PostsValueSortStateTearOff();

/// @nodoc
mixin _$PostsValueSortState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result sortValue(KtList<Post> sortValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result sortValue(KtList<Post> sortValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result sortValue(_SortValue value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result sortValue(_SortValue value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostsValueSortStateCopyWith<$Res> {
  factory $PostsValueSortStateCopyWith(
          PostsValueSortState value, $Res Function(PostsValueSortState) then) =
      _$PostsValueSortStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsValueSortStateCopyWithImpl<$Res>
    implements $PostsValueSortStateCopyWith<$Res> {
  _$PostsValueSortStateCopyWithImpl(this._value, this._then);

  final PostsValueSortState _value;
  // ignore: unused_field
  final $Res Function(PostsValueSortState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PostsValueSortStateCopyWithImpl<$Res>
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
    return 'PostsValueSortState.initial()';
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
    @required Result sortValue(KtList<Post> sortValue),
  }) {
    assert(initial != null);
    assert(sortValue != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result sortValue(KtList<Post> sortValue),
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
    @required Result sortValue(_SortValue value),
  }) {
    assert(initial != null);
    assert(sortValue != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result sortValue(_SortValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostsValueSortState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SortValueCopyWith<$Res> {
  factory _$SortValueCopyWith(
          _SortValue value, $Res Function(_SortValue) then) =
      __$SortValueCopyWithImpl<$Res>;
  $Res call({KtList<Post> sortValue});
}

/// @nodoc
class __$SortValueCopyWithImpl<$Res>
    extends _$PostsValueSortStateCopyWithImpl<$Res>
    implements _$SortValueCopyWith<$Res> {
  __$SortValueCopyWithImpl(_SortValue _value, $Res Function(_SortValue) _then)
      : super(_value, (v) => _then(v as _SortValue));

  @override
  _SortValue get _value => super._value as _SortValue;

  @override
  $Res call({
    Object sortValue = freezed,
  }) {
    return _then(_SortValue(
      sortValue == freezed ? _value.sortValue : sortValue as KtList<Post>,
    ));
  }
}

/// @nodoc
class _$_SortValue implements _SortValue {
  const _$_SortValue(this.sortValue) : assert(sortValue != null);

  @override
  final KtList<Post> sortValue;

  @override
  String toString() {
    return 'PostsValueSortState.sortValue(sortValue: $sortValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SortValue &&
            (identical(other.sortValue, sortValue) ||
                const DeepCollectionEquality()
                    .equals(other.sortValue, sortValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sortValue);

  @override
  _$SortValueCopyWith<_SortValue> get copyWith =>
      __$SortValueCopyWithImpl<_SortValue>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result sortValue(KtList<Post> sortValue),
  }) {
    assert(initial != null);
    assert(sortValue != null);
    return sortValue(this.sortValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result sortValue(KtList<Post> sortValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortValue != null) {
      return sortValue(this.sortValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result sortValue(_SortValue value),
  }) {
    assert(initial != null);
    assert(sortValue != null);
    return sortValue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result sortValue(_SortValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortValue != null) {
      return sortValue(this);
    }
    return orElse();
  }
}

abstract class _SortValue implements PostsValueSortState {
  const factory _SortValue(KtList<Post> sortValue) = _$_SortValue;

  KtList<Post> get sortValue;
  _$SortValueCopyWith<_SortValue> get copyWith;
}
