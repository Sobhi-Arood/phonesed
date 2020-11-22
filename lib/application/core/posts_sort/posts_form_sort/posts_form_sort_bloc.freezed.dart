// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'posts_form_sort_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostsFormSortEventTearOff {
  const _$PostsFormSortEventTearOff();

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
  }

// ignore: unused_element
  _SortValueChanged sortValueChanged(String value) {
    return _SortValueChanged(
      value,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostsFormSortEvent = _$PostsFormSortEventTearOff();

/// @nodoc
mixin _$PostsFormSortEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result sortValueChanged(String value),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result sortValueChanged(String value),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result sortValueChanged(_SortValueChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result sortValueChanged(_SortValueChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostsFormSortEventCopyWith<$Res> {
  factory $PostsFormSortEventCopyWith(
          PostsFormSortEvent value, $Res Function(PostsFormSortEvent) then) =
      _$PostsFormSortEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsFormSortEventCopyWithImpl<$Res>
    implements $PostsFormSortEventCopyWith<$Res> {
  _$PostsFormSortEventCopyWithImpl(this._value, this._then);

  final PostsFormSortEvent _value;
  // ignore: unused_field
  final $Res Function(PostsFormSortEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$PostsFormSortEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'PostsFormSortEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(),
    @required Result sortValueChanged(String value),
  }) {
    assert(initialized != null);
    assert(sortValueChanged != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result sortValueChanged(String value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result sortValueChanged(_SortValueChanged value),
  }) {
    assert(initialized != null);
    assert(sortValueChanged != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result sortValueChanged(_SortValueChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PostsFormSortEvent {
  const factory _Initialized() = _$_Initialized;
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
    extends _$PostsFormSortEventCopyWithImpl<$Res>
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
    return 'PostsFormSortEvent.sortValueChanged(value: $value)';
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
    @required Result initialized(),
    @required Result sortValueChanged(String value),
  }) {
    assert(initialized != null);
    assert(sortValueChanged != null);
    return sortValueChanged(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(),
    Result sortValueChanged(String value),
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
    @required Result initialized(_Initialized value),
    @required Result sortValueChanged(_SortValueChanged value),
  }) {
    assert(initialized != null);
    assert(sortValueChanged != null);
    return sortValueChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result sortValueChanged(_SortValueChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortValueChanged != null) {
      return sortValueChanged(this);
    }
    return orElse();
  }
}

abstract class _SortValueChanged implements PostsFormSortEvent {
  const factory _SortValueChanged(String value) = _$_SortValueChanged;

  String get value;
  _$SortValueChangedCopyWith<_SortValueChanged> get copyWith;
}

/// @nodoc
class _$PostsFormSortStateTearOff {
  const _$PostsFormSortStateTearOff();

// ignore: unused_element
  _PostsFormSortState call({@required String sortValue}) {
    return _PostsFormSortState(
      sortValue: sortValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostsFormSortState = _$PostsFormSortStateTearOff();

/// @nodoc
mixin _$PostsFormSortState {
  String get sortValue;

  $PostsFormSortStateCopyWith<PostsFormSortState> get copyWith;
}

/// @nodoc
abstract class $PostsFormSortStateCopyWith<$Res> {
  factory $PostsFormSortStateCopyWith(
          PostsFormSortState value, $Res Function(PostsFormSortState) then) =
      _$PostsFormSortStateCopyWithImpl<$Res>;
  $Res call({String sortValue});
}

/// @nodoc
class _$PostsFormSortStateCopyWithImpl<$Res>
    implements $PostsFormSortStateCopyWith<$Res> {
  _$PostsFormSortStateCopyWithImpl(this._value, this._then);

  final PostsFormSortState _value;
  // ignore: unused_field
  final $Res Function(PostsFormSortState) _then;

  @override
  $Res call({
    Object sortValue = freezed,
  }) {
    return _then(_value.copyWith(
      sortValue: sortValue == freezed ? _value.sortValue : sortValue as String,
    ));
  }
}

/// @nodoc
abstract class _$PostsFormSortStateCopyWith<$Res>
    implements $PostsFormSortStateCopyWith<$Res> {
  factory _$PostsFormSortStateCopyWith(
          _PostsFormSortState value, $Res Function(_PostsFormSortState) then) =
      __$PostsFormSortStateCopyWithImpl<$Res>;
  @override
  $Res call({String sortValue});
}

/// @nodoc
class __$PostsFormSortStateCopyWithImpl<$Res>
    extends _$PostsFormSortStateCopyWithImpl<$Res>
    implements _$PostsFormSortStateCopyWith<$Res> {
  __$PostsFormSortStateCopyWithImpl(
      _PostsFormSortState _value, $Res Function(_PostsFormSortState) _then)
      : super(_value, (v) => _then(v as _PostsFormSortState));

  @override
  _PostsFormSortState get _value => super._value as _PostsFormSortState;

  @override
  $Res call({
    Object sortValue = freezed,
  }) {
    return _then(_PostsFormSortState(
      sortValue: sortValue == freezed ? _value.sortValue : sortValue as String,
    ));
  }
}

/// @nodoc
class _$_PostsFormSortState implements _PostsFormSortState {
  const _$_PostsFormSortState({@required this.sortValue})
      : assert(sortValue != null);

  @override
  final String sortValue;

  @override
  String toString() {
    return 'PostsFormSortState(sortValue: $sortValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsFormSortState &&
            (identical(other.sortValue, sortValue) ||
                const DeepCollectionEquality()
                    .equals(other.sortValue, sortValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sortValue);

  @override
  _$PostsFormSortStateCopyWith<_PostsFormSortState> get copyWith =>
      __$PostsFormSortStateCopyWithImpl<_PostsFormSortState>(this, _$identity);
}

abstract class _PostsFormSortState implements PostsFormSortState {
  const factory _PostsFormSortState({@required String sortValue}) =
      _$_PostsFormSortState;

  @override
  String get sortValue;
  @override
  _$PostsFormSortStateCopyWith<_PostsFormSortState> get copyWith;
}
