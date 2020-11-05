// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'conversations_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ConversationsWatcherEventTearOff {
  const _$ConversationsWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _ConversationsReceived conversationsReceived(
      Either<MessageFailure, KtList<Conversation>> failureOrMessages) {
    return _ConversationsReceived(
      failureOrMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ConversationsWatcherEvent = _$ConversationsWatcherEventTearOff();

/// @nodoc
mixin _$ConversationsWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result conversationsReceived(
            Either<MessageFailure, KtList<Conversation>> failureOrMessages),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result conversationsReceived(
        Either<MessageFailure, KtList<Conversation>> failureOrMessages),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result conversationsReceived(_ConversationsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result conversationsReceived(_ConversationsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ConversationsWatcherEventCopyWith<$Res> {
  factory $ConversationsWatcherEventCopyWith(ConversationsWatcherEvent value,
          $Res Function(ConversationsWatcherEvent) then) =
      _$ConversationsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationsWatcherEventCopyWithImpl<$Res>
    implements $ConversationsWatcherEventCopyWith<$Res> {
  _$ConversationsWatcherEventCopyWithImpl(this._value, this._then);

  final ConversationsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ConversationsWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ConversationsWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ConversationsWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result conversationsReceived(
            Either<MessageFailure, KtList<Conversation>> failureOrMessages),
  }) {
    assert(watchAllStarted != null);
    assert(conversationsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result conversationsReceived(
        Either<MessageFailure, KtList<Conversation>> failureOrMessages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result conversationsReceived(_ConversationsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(conversationsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result conversationsReceived(_ConversationsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ConversationsWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$ConversationsReceivedCopyWith<$Res> {
  factory _$ConversationsReceivedCopyWith(_ConversationsReceived value,
          $Res Function(_ConversationsReceived) then) =
      __$ConversationsReceivedCopyWithImpl<$Res>;
  $Res call({Either<MessageFailure, KtList<Conversation>> failureOrMessages});
}

/// @nodoc
class __$ConversationsReceivedCopyWithImpl<$Res>
    extends _$ConversationsWatcherEventCopyWithImpl<$Res>
    implements _$ConversationsReceivedCopyWith<$Res> {
  __$ConversationsReceivedCopyWithImpl(_ConversationsReceived _value,
      $Res Function(_ConversationsReceived) _then)
      : super(_value, (v) => _then(v as _ConversationsReceived));

  @override
  _ConversationsReceived get _value => super._value as _ConversationsReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_ConversationsReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages as Either<MessageFailure, KtList<Conversation>>,
    ));
  }
}

/// @nodoc
class _$_ConversationsReceived implements _ConversationsReceived {
  const _$_ConversationsReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<MessageFailure, KtList<Conversation>> failureOrMessages;

  @override
  String toString() {
    return 'ConversationsWatcherEvent.conversationsReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConversationsReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @override
  _$ConversationsReceivedCopyWith<_ConversationsReceived> get copyWith =>
      __$ConversationsReceivedCopyWithImpl<_ConversationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result conversationsReceived(
            Either<MessageFailure, KtList<Conversation>> failureOrMessages),
  }) {
    assert(watchAllStarted != null);
    assert(conversationsReceived != null);
    return conversationsReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result conversationsReceived(
        Either<MessageFailure, KtList<Conversation>> failureOrMessages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (conversationsReceived != null) {
      return conversationsReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result conversationsReceived(_ConversationsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(conversationsReceived != null);
    return conversationsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result conversationsReceived(_ConversationsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (conversationsReceived != null) {
      return conversationsReceived(this);
    }
    return orElse();
  }
}

abstract class _ConversationsReceived implements ConversationsWatcherEvent {
  const factory _ConversationsReceived(
          Either<MessageFailure, KtList<Conversation>> failureOrMessages) =
      _$_ConversationsReceived;

  Either<MessageFailure, KtList<Conversation>> get failureOrMessages;
  _$ConversationsReceivedCopyWith<_ConversationsReceived> get copyWith;
}

/// @nodoc
class _$ConversationsWatcherStateTearOff {
  const _$ConversationsWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Conversation> conversations) {
    return _LoadSuccess(
      conversations,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(MessageFailure messageFailure) {
    return _LoadFailure(
      messageFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ConversationsWatcherState = _$ConversationsWatcherStateTearOff();

/// @nodoc
mixin _$ConversationsWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Conversation> conversations),
    @required Result loadFailure(MessageFailure messageFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Conversation> conversations),
    Result loadFailure(MessageFailure messageFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ConversationsWatcherStateCopyWith<$Res> {
  factory $ConversationsWatcherStateCopyWith(ConversationsWatcherState value,
          $Res Function(ConversationsWatcherState) then) =
      _$ConversationsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationsWatcherStateCopyWithImpl<$Res>
    implements $ConversationsWatcherStateCopyWith<$Res> {
  _$ConversationsWatcherStateCopyWithImpl(this._value, this._then);

  final ConversationsWatcherState _value;
  // ignore: unused_field
  final $Res Function(ConversationsWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ConversationsWatcherStateCopyWithImpl<$Res>
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
    return 'ConversationsWatcherState.initial()';
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
    @required Result loadSuccess(KtList<Conversation> conversations),
    @required Result loadFailure(MessageFailure messageFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Conversation> conversations),
    Result loadFailure(MessageFailure messageFailure),
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
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationsWatcherState {
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
    extends _$ConversationsWatcherStateCopyWithImpl<$Res>
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
    return 'ConversationsWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtList<Conversation> conversations),
    @required Result loadFailure(MessageFailure messageFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Conversation> conversations),
    Result loadFailure(MessageFailure messageFailure),
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
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ConversationsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Conversation> conversations});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ConversationsWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object conversations = freezed,
  }) {
    return _then(_LoadSuccess(
      conversations == freezed
          ? _value.conversations
          : conversations as KtList<Conversation>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.conversations) : assert(conversations != null);

  @override
  final KtList<Conversation> conversations;

  @override
  String toString() {
    return 'ConversationsWatcherState.loadSuccess(conversations: $conversations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.conversations, conversations) ||
                const DeepCollectionEquality()
                    .equals(other.conversations, conversations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(conversations);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Conversation> conversations),
    @required Result loadFailure(MessageFailure messageFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(conversations);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Conversation> conversations),
    Result loadFailure(MessageFailure messageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ConversationsWatcherState {
  const factory _LoadSuccess(KtList<Conversation> conversations) =
      _$_LoadSuccess;

  KtList<Conversation> get conversations;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({MessageFailure messageFailure});

  $MessageFailureCopyWith<$Res> get messageFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ConversationsWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object messageFailure = freezed,
  }) {
    return _then(_LoadFailure(
      messageFailure == freezed
          ? _value.messageFailure
          : messageFailure as MessageFailure,
    ));
  }

  @override
  $MessageFailureCopyWith<$Res> get messageFailure {
    if (_value.messageFailure == null) {
      return null;
    }
    return $MessageFailureCopyWith<$Res>(_value.messageFailure, (value) {
      return _then(_value.copyWith(messageFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.messageFailure) : assert(messageFailure != null);

  @override
  final MessageFailure messageFailure;

  @override
  String toString() {
    return 'ConversationsWatcherState.loadFailure(messageFailure: $messageFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.messageFailure, messageFailure) ||
                const DeepCollectionEquality()
                    .equals(other.messageFailure, messageFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Conversation> conversations),
    @required Result loadFailure(MessageFailure messageFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(messageFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Conversation> conversations),
    Result loadFailure(MessageFailure messageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(messageFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ConversationsWatcherState {
  const factory _LoadFailure(MessageFailure messageFailure) = _$_LoadFailure;

  MessageFailure get messageFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
