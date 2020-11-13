// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'posts_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostsFilterEventTearOff {
  const _$PostsFilterEventTearOff();

// ignore: unused_element
  _Opened opened() {
    return const _Opened();
  }

// ignore: unused_element
  _Closed closed() {
    return const _Closed();
  }
}

/// @nodoc
// ignore: unused_element
const $PostsFilterEvent = _$PostsFilterEventTearOff();

/// @nodoc
mixin _$PostsFilterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result opened(),
    @required Result closed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result opened(),
    Result closed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result opened(_Opened value),
    @required Result closed(_Closed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result opened(_Opened value),
    Result closed(_Closed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostsFilterEventCopyWith<$Res> {
  factory $PostsFilterEventCopyWith(
          PostsFilterEvent value, $Res Function(PostsFilterEvent) then) =
      _$PostsFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsFilterEventCopyWithImpl<$Res>
    implements $PostsFilterEventCopyWith<$Res> {
  _$PostsFilterEventCopyWithImpl(this._value, this._then);

  final PostsFilterEvent _value;
  // ignore: unused_field
  final $Res Function(PostsFilterEvent) _then;
}

/// @nodoc
abstract class _$OpenedCopyWith<$Res> {
  factory _$OpenedCopyWith(_Opened value, $Res Function(_Opened) then) =
      __$OpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenedCopyWithImpl<$Res> extends _$PostsFilterEventCopyWithImpl<$Res>
    implements _$OpenedCopyWith<$Res> {
  __$OpenedCopyWithImpl(_Opened _value, $Res Function(_Opened) _then)
      : super(_value, (v) => _then(v as _Opened));

  @override
  _Opened get _value => super._value as _Opened;
}

/// @nodoc
class _$_Opened implements _Opened {
  const _$_Opened();

  @override
  String toString() {
    return 'PostsFilterEvent.opened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Opened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result opened(),
    @required Result closed(),
  }) {
    assert(opened != null);
    assert(closed != null);
    return opened();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result opened(),
    Result closed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (opened != null) {
      return opened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result opened(_Opened value),
    @required Result closed(_Closed value),
  }) {
    assert(opened != null);
    assert(closed != null);
    return opened(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result opened(_Opened value),
    Result closed(_Closed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class _Opened implements PostsFilterEvent {
  const factory _Opened() = _$_Opened;
}

/// @nodoc
abstract class _$ClosedCopyWith<$Res> {
  factory _$ClosedCopyWith(_Closed value, $Res Function(_Closed) then) =
      __$ClosedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClosedCopyWithImpl<$Res> extends _$PostsFilterEventCopyWithImpl<$Res>
    implements _$ClosedCopyWith<$Res> {
  __$ClosedCopyWithImpl(_Closed _value, $Res Function(_Closed) _then)
      : super(_value, (v) => _then(v as _Closed));

  @override
  _Closed get _value => super._value as _Closed;
}

/// @nodoc
class _$_Closed implements _Closed {
  const _$_Closed();

  @override
  String toString() {
    return 'PostsFilterEvent.closed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Closed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result opened(),
    @required Result closed(),
  }) {
    assert(opened != null);
    assert(closed != null);
    return closed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result opened(),
    Result closed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result opened(_Opened value),
    @required Result closed(_Closed value),
  }) {
    assert(opened != null);
    assert(closed != null);
    return closed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result opened(_Opened value),
    Result closed(_Closed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class _Closed implements PostsFilterEvent {
  const factory _Closed() = _$_Closed;
}

/// @nodoc
class _$PostsFilterStateTearOff {
  const _$PostsFilterStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _WidgetOpen widgetOpen() {
    return const _WidgetOpen();
  }

// ignore: unused_element
  _WidgetClose widgetClose() {
    return const _WidgetClose();
  }
}

/// @nodoc
// ignore: unused_element
const $PostsFilterState = _$PostsFilterStateTearOff();

/// @nodoc
mixin _$PostsFilterState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result widgetOpen(),
    @required Result widgetClose(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result widgetOpen(),
    Result widgetClose(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result widgetOpen(_WidgetOpen value),
    @required Result widgetClose(_WidgetClose value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result widgetOpen(_WidgetOpen value),
    Result widgetClose(_WidgetClose value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostsFilterStateCopyWith<$Res> {
  factory $PostsFilterStateCopyWith(
          PostsFilterState value, $Res Function(PostsFilterState) then) =
      _$PostsFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsFilterStateCopyWithImpl<$Res>
    implements $PostsFilterStateCopyWith<$Res> {
  _$PostsFilterStateCopyWithImpl(this._value, this._then);

  final PostsFilterState _value;
  // ignore: unused_field
  final $Res Function(PostsFilterState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostsFilterStateCopyWithImpl<$Res>
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
    return 'PostsFilterState.initial()';
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
    @required Result widgetOpen(),
    @required Result widgetClose(),
  }) {
    assert(initial != null);
    assert(widgetOpen != null);
    assert(widgetClose != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result widgetOpen(),
    Result widgetClose(),
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
    @required Result widgetOpen(_WidgetOpen value),
    @required Result widgetClose(_WidgetClose value),
  }) {
    assert(initial != null);
    assert(widgetOpen != null);
    assert(widgetClose != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result widgetOpen(_WidgetOpen value),
    Result widgetClose(_WidgetClose value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostsFilterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$WidgetOpenCopyWith<$Res> {
  factory _$WidgetOpenCopyWith(
          _WidgetOpen value, $Res Function(_WidgetOpen) then) =
      __$WidgetOpenCopyWithImpl<$Res>;
}

/// @nodoc
class __$WidgetOpenCopyWithImpl<$Res>
    extends _$PostsFilterStateCopyWithImpl<$Res>
    implements _$WidgetOpenCopyWith<$Res> {
  __$WidgetOpenCopyWithImpl(
      _WidgetOpen _value, $Res Function(_WidgetOpen) _then)
      : super(_value, (v) => _then(v as _WidgetOpen));

  @override
  _WidgetOpen get _value => super._value as _WidgetOpen;
}

/// @nodoc
class _$_WidgetOpen implements _WidgetOpen {
  const _$_WidgetOpen();

  @override
  String toString() {
    return 'PostsFilterState.widgetOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WidgetOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result widgetOpen(),
    @required Result widgetClose(),
  }) {
    assert(initial != null);
    assert(widgetOpen != null);
    assert(widgetClose != null);
    return widgetOpen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result widgetOpen(),
    Result widgetClose(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (widgetOpen != null) {
      return widgetOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result widgetOpen(_WidgetOpen value),
    @required Result widgetClose(_WidgetClose value),
  }) {
    assert(initial != null);
    assert(widgetOpen != null);
    assert(widgetClose != null);
    return widgetOpen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result widgetOpen(_WidgetOpen value),
    Result widgetClose(_WidgetClose value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (widgetOpen != null) {
      return widgetOpen(this);
    }
    return orElse();
  }
}

abstract class _WidgetOpen implements PostsFilterState {
  const factory _WidgetOpen() = _$_WidgetOpen;
}

/// @nodoc
abstract class _$WidgetCloseCopyWith<$Res> {
  factory _$WidgetCloseCopyWith(
          _WidgetClose value, $Res Function(_WidgetClose) then) =
      __$WidgetCloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$WidgetCloseCopyWithImpl<$Res>
    extends _$PostsFilterStateCopyWithImpl<$Res>
    implements _$WidgetCloseCopyWith<$Res> {
  __$WidgetCloseCopyWithImpl(
      _WidgetClose _value, $Res Function(_WidgetClose) _then)
      : super(_value, (v) => _then(v as _WidgetClose));

  @override
  _WidgetClose get _value => super._value as _WidgetClose;
}

/// @nodoc
class _$_WidgetClose implements _WidgetClose {
  const _$_WidgetClose();

  @override
  String toString() {
    return 'PostsFilterState.widgetClose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WidgetClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result widgetOpen(),
    @required Result widgetClose(),
  }) {
    assert(initial != null);
    assert(widgetOpen != null);
    assert(widgetClose != null);
    return widgetClose();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result widgetOpen(),
    Result widgetClose(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (widgetClose != null) {
      return widgetClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result widgetOpen(_WidgetOpen value),
    @required Result widgetClose(_WidgetClose value),
  }) {
    assert(initial != null);
    assert(widgetOpen != null);
    assert(widgetClose != null);
    return widgetClose(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result widgetOpen(_WidgetOpen value),
    Result widgetClose(_WidgetClose value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (widgetClose != null) {
      return widgetClose(this);
    }
    return orElse();
  }
}

abstract class _WidgetClose implements PostsFilterState {
  const factory _WidgetClose() = _$_WidgetClose;
}
