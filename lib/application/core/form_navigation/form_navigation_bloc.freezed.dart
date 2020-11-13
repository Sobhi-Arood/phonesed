// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'form_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FormNavigationEventTearOff {
  const _$FormNavigationEventTearOff();

// ignore: unused_element
  _PageChanged pageChanged(int index) {
    return _PageChanged(
      index,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FormNavigationEvent = _$FormNavigationEventTearOff();

/// @nodoc
mixin _$FormNavigationEvent {
  int get index;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pageChanged(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pageChanged(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pageChanged(_PageChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pageChanged(_PageChanged value),
    @required Result orElse(),
  });

  $FormNavigationEventCopyWith<FormNavigationEvent> get copyWith;
}

/// @nodoc
abstract class $FormNavigationEventCopyWith<$Res> {
  factory $FormNavigationEventCopyWith(
          FormNavigationEvent value, $Res Function(FormNavigationEvent) then) =
      _$FormNavigationEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$FormNavigationEventCopyWithImpl<$Res>
    implements $FormNavigationEventCopyWith<$Res> {
  _$FormNavigationEventCopyWithImpl(this._value, this._then);

  final FormNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(FormNavigationEvent) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
abstract class _$PageChangedCopyWith<$Res>
    implements $FormNavigationEventCopyWith<$Res> {
  factory _$PageChangedCopyWith(
          _PageChanged value, $Res Function(_PageChanged) then) =
      __$PageChangedCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$PageChangedCopyWithImpl<$Res>
    extends _$FormNavigationEventCopyWithImpl<$Res>
    implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(
      _PageChanged _value, $Res Function(_PageChanged) _then)
      : super(_value, (v) => _then(v as _PageChanged));

  @override
  _PageChanged get _value => super._value as _PageChanged;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_PageChanged(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_PageChanged implements _PageChanged {
  const _$_PageChanged(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'FormNavigationEvent.pageChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pageChanged(int index),
  }) {
    assert(pageChanged != null);
    return pageChanged(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pageChanged(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageChanged != null) {
      return pageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pageChanged(_PageChanged value),
  }) {
    assert(pageChanged != null);
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pageChanged(_PageChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements FormNavigationEvent {
  const factory _PageChanged(int index) = _$_PageChanged;

  @override
  int get index;
  @override
  _$PageChangedCopyWith<_PageChanged> get copyWith;
}

/// @nodoc
class _$FormNavigationStateTearOff {
  const _$FormNavigationStateTearOff();

// ignore: unused_element
  _Index index(int currentIndex) {
    return _Index(
      currentIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FormNavigationState = _$FormNavigationStateTearOff();

/// @nodoc
mixin _$FormNavigationState {
  int get currentIndex;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(int currentIndex),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(int currentIndex),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(_Index value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(_Index value),
    @required Result orElse(),
  });

  $FormNavigationStateCopyWith<FormNavigationState> get copyWith;
}

/// @nodoc
abstract class $FormNavigationStateCopyWith<$Res> {
  factory $FormNavigationStateCopyWith(
          FormNavigationState value, $Res Function(FormNavigationState) then) =
      _$FormNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$FormNavigationStateCopyWithImpl<$Res>
    implements $FormNavigationStateCopyWith<$Res> {
  _$FormNavigationStateCopyWithImpl(this._value, this._then);

  final FormNavigationState _value;
  // ignore: unused_field
  final $Res Function(FormNavigationState) _then;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$IndexCopyWith<$Res>
    implements $FormNavigationStateCopyWith<$Res> {
  factory _$IndexCopyWith(_Index value, $Res Function(_Index) then) =
      __$IndexCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$IndexCopyWithImpl<$Res> extends _$FormNavigationStateCopyWithImpl<$Res>
    implements _$IndexCopyWith<$Res> {
  __$IndexCopyWithImpl(_Index _value, $Res Function(_Index) _then)
      : super(_value, (v) => _then(v as _Index));

  @override
  _Index get _value => super._value as _Index;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_Index(
      currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
class _$_Index implements _Index {
  const _$_Index(this.currentIndex) : assert(currentIndex != null);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'FormNavigationState.index(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Index &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentIndex);

  @override
  _$IndexCopyWith<_Index> get copyWith =>
      __$IndexCopyWithImpl<_Index>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result index(int currentIndex),
  }) {
    assert(index != null);
    return index(currentIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result index(int currentIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result index(_Index value),
  }) {
    assert(index != null);
    return index(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result index(_Index value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (index != null) {
      return index(this);
    }
    return orElse();
  }
}

abstract class _Index implements FormNavigationState {
  const factory _Index(int currentIndex) = _$_Index;

  @override
  int get currentIndex;
  @override
  _$IndexCopyWith<_Index> get copyWith;
}
