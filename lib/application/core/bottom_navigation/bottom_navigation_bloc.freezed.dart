// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BottomNavigationEventTearOff {
  const _$BottomNavigationEventTearOff();

// ignore: unused_element
  PageChanged pageChanged(int index) {
    return PageChanged(
      index,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BottomNavigationEvent = _$BottomNavigationEventTearOff();

/// @nodoc
mixin _$BottomNavigationEvent {
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
    @required Result pageChanged(PageChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pageChanged(PageChanged value),
    @required Result orElse(),
  });

  $BottomNavigationEventCopyWith<BottomNavigationEvent> get copyWith;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  final BottomNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationEvent) _then;

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
abstract class $PageChangedCopyWith<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  factory $PageChangedCopyWith(
          PageChanged value, $Res Function(PageChanged) then) =
      _$PageChangedCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class _$PageChangedCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res>
    implements $PageChangedCopyWith<$Res> {
  _$PageChangedCopyWithImpl(
      PageChanged _value, $Res Function(PageChanged) _then)
      : super(_value, (v) => _then(v as PageChanged));

  @override
  PageChanged get _value => super._value as PageChanged;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(PageChanged(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$PageChanged implements PageChanged {
  const _$PageChanged(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationEvent.pageChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $PageChangedCopyWith<PageChanged> get copyWith =>
      _$PageChangedCopyWithImpl<PageChanged>(this, _$identity);

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
    @required Result pageChanged(PageChanged value),
  }) {
    assert(pageChanged != null);
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pageChanged(PageChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class PageChanged implements BottomNavigationEvent {
  const factory PageChanged(int index) = _$PageChanged;

  @override
  int get index;
  @override
  $PageChangedCopyWith<PageChanged> get copyWith;
}

/// @nodoc
class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

// ignore: unused_element
  _Index index(int currentIndex) {
    return _Index(
      currentIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BottomNavigationState = _$BottomNavigationStateTearOff();

/// @nodoc
mixin _$BottomNavigationState {
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

  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;

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
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$IndexCopyWith(_Index value, $Res Function(_Index) then) =
      __$IndexCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$IndexCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
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
    return 'BottomNavigationState.index(currentIndex: $currentIndex)';
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

abstract class _Index implements BottomNavigationState {
  const factory _Index(int currentIndex) = _$_Index;

  @override
  int get currentIndex;
  @override
  _$IndexCopyWith<_Index> get copyWith;
}
