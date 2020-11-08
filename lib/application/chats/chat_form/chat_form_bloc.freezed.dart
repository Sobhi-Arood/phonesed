// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatFormEventTearOff {
  const _$ChatFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Message> initialMessageOption) {
    return _Initialized(
      initialMessageOption,
    );
  }

// ignore: unused_element
  _PostPrimitiveChanged postPrimitiveChanged(PostPrimitive postPrimitive) {
    return _PostPrimitiveChanged(
      postPrimitive,
    );
  }

// ignore: unused_element
  _ContentChanged contentChanged(String contentStr) {
    return _ContentChanged(
      contentStr,
    );
  }

// ignore: unused_element
  _Send sended(String recId) {
    return _Send(
      recId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatFormEvent = _$ChatFormEventTearOff();

/// @nodoc
mixin _$ChatFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Message> initialMessageOption),
    @required Result postPrimitiveChanged(PostPrimitive postPrimitive),
    @required Result contentChanged(String contentStr),
    @required Result sended(String recId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postPrimitiveChanged(PostPrimitive postPrimitive),
    Result contentChanged(String contentStr),
    Result sended(String recId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postPrimitiveChanged(_PostPrimitiveChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postPrimitiveChanged(_PostPrimitiveChanged value),
    Result contentChanged(_ContentChanged value),
    Result sended(_Send value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ChatFormEventCopyWith<$Res> {
  factory $ChatFormEventCopyWith(
          ChatFormEvent value, $Res Function(ChatFormEvent) then) =
      _$ChatFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatFormEventCopyWithImpl<$Res>
    implements $ChatFormEventCopyWith<$Res> {
  _$ChatFormEventCopyWithImpl(this._value, this._then);

  final ChatFormEvent _value;
  // ignore: unused_field
  final $Res Function(ChatFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Message> initialMessageOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialMessageOption = freezed,
  }) {
    return _then(_Initialized(
      initialMessageOption == freezed
          ? _value.initialMessageOption
          : initialMessageOption as Option<Message>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialMessageOption)
      : assert(initialMessageOption != null);

  @override
  final Option<Message> initialMessageOption;

  @override
  String toString() {
    return 'ChatFormEvent.initialized(initialMessageOption: $initialMessageOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialMessageOption, initialMessageOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialMessageOption, initialMessageOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialMessageOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Message> initialMessageOption),
    @required Result postPrimitiveChanged(PostPrimitive postPrimitive),
    @required Result contentChanged(String contentStr),
    @required Result sended(String recId),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return initialized(initialMessageOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postPrimitiveChanged(PostPrimitive postPrimitive),
    Result contentChanged(String contentStr),
    Result sended(String recId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialMessageOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postPrimitiveChanged(_PostPrimitiveChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postPrimitiveChanged(_PostPrimitiveChanged value),
    Result contentChanged(_ContentChanged value),
    Result sended(_Send value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChatFormEvent {
  const factory _Initialized(Option<Message> initialMessageOption) =
      _$_Initialized;

  Option<Message> get initialMessageOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$PostPrimitiveChangedCopyWith<$Res> {
  factory _$PostPrimitiveChangedCopyWith(_PostPrimitiveChanged value,
          $Res Function(_PostPrimitiveChanged) then) =
      __$PostPrimitiveChangedCopyWithImpl<$Res>;
  $Res call({PostPrimitive postPrimitive});

  $PostPrimitiveCopyWith<$Res> get postPrimitive;
}

/// @nodoc
class __$PostPrimitiveChangedCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$PostPrimitiveChangedCopyWith<$Res> {
  __$PostPrimitiveChangedCopyWithImpl(
      _PostPrimitiveChanged _value, $Res Function(_PostPrimitiveChanged) _then)
      : super(_value, (v) => _then(v as _PostPrimitiveChanged));

  @override
  _PostPrimitiveChanged get _value => super._value as _PostPrimitiveChanged;

  @override
  $Res call({
    Object postPrimitive = freezed,
  }) {
    return _then(_PostPrimitiveChanged(
      postPrimitive == freezed
          ? _value.postPrimitive
          : postPrimitive as PostPrimitive,
    ));
  }

  @override
  $PostPrimitiveCopyWith<$Res> get postPrimitive {
    if (_value.postPrimitive == null) {
      return null;
    }
    return $PostPrimitiveCopyWith<$Res>(_value.postPrimitive, (value) {
      return _then(_value.copyWith(postPrimitive: value));
    });
  }
}

/// @nodoc
class _$_PostPrimitiveChanged implements _PostPrimitiveChanged {
  const _$_PostPrimitiveChanged(this.postPrimitive)
      : assert(postPrimitive != null);

  @override
  final PostPrimitive postPrimitive;

  @override
  String toString() {
    return 'ChatFormEvent.postPrimitiveChanged(postPrimitive: $postPrimitive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostPrimitiveChanged &&
            (identical(other.postPrimitive, postPrimitive) ||
                const DeepCollectionEquality()
                    .equals(other.postPrimitive, postPrimitive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postPrimitive);

  @override
  _$PostPrimitiveChangedCopyWith<_PostPrimitiveChanged> get copyWith =>
      __$PostPrimitiveChangedCopyWithImpl<_PostPrimitiveChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Message> initialMessageOption),
    @required Result postPrimitiveChanged(PostPrimitive postPrimitive),
    @required Result contentChanged(String contentStr),
    @required Result sended(String recId),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return postPrimitiveChanged(postPrimitive);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postPrimitiveChanged(PostPrimitive postPrimitive),
    Result contentChanged(String contentStr),
    Result sended(String recId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postPrimitiveChanged != null) {
      return postPrimitiveChanged(postPrimitive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postPrimitiveChanged(_PostPrimitiveChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return postPrimitiveChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postPrimitiveChanged(_PostPrimitiveChanged value),
    Result contentChanged(_ContentChanged value),
    Result sended(_Send value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postPrimitiveChanged != null) {
      return postPrimitiveChanged(this);
    }
    return orElse();
  }
}

abstract class _PostPrimitiveChanged implements ChatFormEvent {
  const factory _PostPrimitiveChanged(PostPrimitive postPrimitive) =
      _$_PostPrimitiveChanged;

  PostPrimitive get postPrimitive;
  _$PostPrimitiveChangedCopyWith<_PostPrimitiveChanged> get copyWith;
}

/// @nodoc
abstract class _$ContentChangedCopyWith<$Res> {
  factory _$ContentChangedCopyWith(
          _ContentChanged value, $Res Function(_ContentChanged) then) =
      __$ContentChangedCopyWithImpl<$Res>;
  $Res call({String contentStr});
}

/// @nodoc
class __$ContentChangedCopyWithImpl<$Res>
    extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$ContentChangedCopyWith<$Res> {
  __$ContentChangedCopyWithImpl(
      _ContentChanged _value, $Res Function(_ContentChanged) _then)
      : super(_value, (v) => _then(v as _ContentChanged));

  @override
  _ContentChanged get _value => super._value as _ContentChanged;

  @override
  $Res call({
    Object contentStr = freezed,
  }) {
    return _then(_ContentChanged(
      contentStr == freezed ? _value.contentStr : contentStr as String,
    ));
  }
}

/// @nodoc
class _$_ContentChanged implements _ContentChanged {
  const _$_ContentChanged(this.contentStr) : assert(contentStr != null);

  @override
  final String contentStr;

  @override
  String toString() {
    return 'ChatFormEvent.contentChanged(contentStr: $contentStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentChanged &&
            (identical(other.contentStr, contentStr) ||
                const DeepCollectionEquality()
                    .equals(other.contentStr, contentStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contentStr);

  @override
  _$ContentChangedCopyWith<_ContentChanged> get copyWith =>
      __$ContentChangedCopyWithImpl<_ContentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Message> initialMessageOption),
    @required Result postPrimitiveChanged(PostPrimitive postPrimitive),
    @required Result contentChanged(String contentStr),
    @required Result sended(String recId),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return contentChanged(contentStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postPrimitiveChanged(PostPrimitive postPrimitive),
    Result contentChanged(String contentStr),
    Result sended(String recId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(contentStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postPrimitiveChanged(_PostPrimitiveChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postPrimitiveChanged(_PostPrimitiveChanged value),
    Result contentChanged(_ContentChanged value),
    Result sended(_Send value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(this);
    }
    return orElse();
  }
}

abstract class _ContentChanged implements ChatFormEvent {
  const factory _ContentChanged(String contentStr) = _$_ContentChanged;

  String get contentStr;
  _$ContentChangedCopyWith<_ContentChanged> get copyWith;
}

/// @nodoc
abstract class _$SendCopyWith<$Res> {
  factory _$SendCopyWith(_Send value, $Res Function(_Send) then) =
      __$SendCopyWithImpl<$Res>;
  $Res call({String recId});
}

/// @nodoc
class __$SendCopyWithImpl<$Res> extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$SendCopyWith<$Res> {
  __$SendCopyWithImpl(_Send _value, $Res Function(_Send) _then)
      : super(_value, (v) => _then(v as _Send));

  @override
  _Send get _value => super._value as _Send;

  @override
  $Res call({
    Object recId = freezed,
  }) {
    return _then(_Send(
      recId == freezed ? _value.recId : recId as String,
    ));
  }
}

/// @nodoc
class _$_Send implements _Send {
  const _$_Send(this.recId) : assert(recId != null);

  @override
  final String recId;

  @override
  String toString() {
    return 'ChatFormEvent.sended(recId: $recId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Send &&
            (identical(other.recId, recId) ||
                const DeepCollectionEquality().equals(other.recId, recId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(recId);

  @override
  _$SendCopyWith<_Send> get copyWith =>
      __$SendCopyWithImpl<_Send>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Message> initialMessageOption),
    @required Result postPrimitiveChanged(PostPrimitive postPrimitive),
    @required Result contentChanged(String contentStr),
    @required Result sended(String recId),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return sended(recId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postPrimitiveChanged(PostPrimitive postPrimitive),
    Result contentChanged(String contentStr),
    Result sended(String recId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sended != null) {
      return sended(recId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postPrimitiveChanged(_PostPrimitiveChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postPrimitiveChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return sended(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postPrimitiveChanged(_PostPrimitiveChanged value),
    Result contentChanged(_ContentChanged value),
    Result sended(_Send value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _Send implements ChatFormEvent {
  const factory _Send(String recId) = _$_Send;

  String get recId;
  _$SendCopyWith<_Send> get copyWith;
}

/// @nodoc
class _$ChatFormStateTearOff {
  const _$ChatFormStateTearOff();

// ignore: unused_element
  _ChatFormState call(
      {@required
          Message message,
      @required
          PostPrimitive postPrimitive,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSending,
      @required
          Option<Either<MessageFailure, Unit>> sendFailureOrSuccessOption}) {
    return _ChatFormState(
      message: message,
      postPrimitive: postPrimitive,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSending: isSending,
      sendFailureOrSuccessOption: sendFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatFormState = _$ChatFormStateTearOff();

/// @nodoc
mixin _$ChatFormState {
  Message get message;
  PostPrimitive get postPrimitive;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSending;
  Option<Either<MessageFailure, Unit>> get sendFailureOrSuccessOption;

  $ChatFormStateCopyWith<ChatFormState> get copyWith;
}

/// @nodoc
abstract class $ChatFormStateCopyWith<$Res> {
  factory $ChatFormStateCopyWith(
          ChatFormState value, $Res Function(ChatFormState) then) =
      _$ChatFormStateCopyWithImpl<$Res>;
  $Res call(
      {Message message,
      PostPrimitive postPrimitive,
      bool showErrorMessages,
      bool isEditing,
      bool isSending,
      Option<Either<MessageFailure, Unit>> sendFailureOrSuccessOption});

  $MessageCopyWith<$Res> get message;
  $PostPrimitiveCopyWith<$Res> get postPrimitive;
}

/// @nodoc
class _$ChatFormStateCopyWithImpl<$Res>
    implements $ChatFormStateCopyWith<$Res> {
  _$ChatFormStateCopyWithImpl(this._value, this._then);

  final ChatFormState _value;
  // ignore: unused_field
  final $Res Function(ChatFormState) _then;

  @override
  $Res call({
    Object message = freezed,
    Object postPrimitive = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSending = freezed,
    Object sendFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as Message,
      postPrimitive: postPrimitive == freezed
          ? _value.postPrimitive
          : postPrimitive as PostPrimitive,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSending: isSending == freezed ? _value.isSending : isSending as bool,
      sendFailureOrSuccessOption: sendFailureOrSuccessOption == freezed
          ? _value.sendFailureOrSuccessOption
          : sendFailureOrSuccessOption as Option<Either<MessageFailure, Unit>>,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    if (_value.message == null) {
      return null;
    }
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }

  @override
  $PostPrimitiveCopyWith<$Res> get postPrimitive {
    if (_value.postPrimitive == null) {
      return null;
    }
    return $PostPrimitiveCopyWith<$Res>(_value.postPrimitive, (value) {
      return _then(_value.copyWith(postPrimitive: value));
    });
  }
}

/// @nodoc
abstract class _$ChatFormStateCopyWith<$Res>
    implements $ChatFormStateCopyWith<$Res> {
  factory _$ChatFormStateCopyWith(
          _ChatFormState value, $Res Function(_ChatFormState) then) =
      __$ChatFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Message message,
      PostPrimitive postPrimitive,
      bool showErrorMessages,
      bool isEditing,
      bool isSending,
      Option<Either<MessageFailure, Unit>> sendFailureOrSuccessOption});

  @override
  $MessageCopyWith<$Res> get message;
  @override
  $PostPrimitiveCopyWith<$Res> get postPrimitive;
}

/// @nodoc
class __$ChatFormStateCopyWithImpl<$Res>
    extends _$ChatFormStateCopyWithImpl<$Res>
    implements _$ChatFormStateCopyWith<$Res> {
  __$ChatFormStateCopyWithImpl(
      _ChatFormState _value, $Res Function(_ChatFormState) _then)
      : super(_value, (v) => _then(v as _ChatFormState));

  @override
  _ChatFormState get _value => super._value as _ChatFormState;

  @override
  $Res call({
    Object message = freezed,
    Object postPrimitive = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSending = freezed,
    Object sendFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChatFormState(
      message: message == freezed ? _value.message : message as Message,
      postPrimitive: postPrimitive == freezed
          ? _value.postPrimitive
          : postPrimitive as PostPrimitive,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSending: isSending == freezed ? _value.isSending : isSending as bool,
      sendFailureOrSuccessOption: sendFailureOrSuccessOption == freezed
          ? _value.sendFailureOrSuccessOption
          : sendFailureOrSuccessOption as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ChatFormState implements _ChatFormState {
  const _$_ChatFormState(
      {@required this.message,
      @required this.postPrimitive,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSending,
      @required this.sendFailureOrSuccessOption})
      : assert(message != null),
        assert(postPrimitive != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSending != null),
        assert(sendFailureOrSuccessOption != null);

  @override
  final Message message;
  @override
  final PostPrimitive postPrimitive;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSending;
  @override
  final Option<Either<MessageFailure, Unit>> sendFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChatFormState(message: $message, postPrimitive: $postPrimitive, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSending: $isSending, sendFailureOrSuccessOption: $sendFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatFormState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.postPrimitive, postPrimitive) ||
                const DeepCollectionEquality()
                    .equals(other.postPrimitive, postPrimitive)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSending, isSending) ||
                const DeepCollectionEquality()
                    .equals(other.isSending, isSending)) &&
            (identical(other.sendFailureOrSuccessOption,
                    sendFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.sendFailureOrSuccessOption,
                    sendFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(postPrimitive) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSending) ^
      const DeepCollectionEquality().hash(sendFailureOrSuccessOption);

  @override
  _$ChatFormStateCopyWith<_ChatFormState> get copyWith =>
      __$ChatFormStateCopyWithImpl<_ChatFormState>(this, _$identity);
}

abstract class _ChatFormState implements ChatFormState {
  const factory _ChatFormState(
      {@required
          Message message,
      @required
          PostPrimitive postPrimitive,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSending,
      @required
          Option<Either<MessageFailure, Unit>>
              sendFailureOrSuccessOption}) = _$_ChatFormState;

  @override
  Message get message;
  @override
  PostPrimitive get postPrimitive;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSending;
  @override
  Option<Either<MessageFailure, Unit>> get sendFailureOrSuccessOption;
  @override
  _$ChatFormStateCopyWith<_ChatFormState> get copyWith;
}
