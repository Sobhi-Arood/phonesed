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
  _PostChanged postChanged(Post post) {
    return _PostChanged(
      post,
    );
  }

// ignore: unused_element
  _ContentChanged contentChanged(String contentStr) {
    return _ContentChanged(
      contentStr,
    );
  }

// ignore: unused_element
  _Send sended() {
    return const _Send();
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
    @required Result postChanged(Post post),
    @required Result contentChanged(String contentStr),
    @required Result sended(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postChanged(Post post),
    Result contentChanged(String contentStr),
    Result sended(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postChanged(_PostChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postChanged(_PostChanged value),
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
    @required Result postChanged(Post post),
    @required Result contentChanged(String contentStr),
    @required Result sended(),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return initialized(initialMessageOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postChanged(Post post),
    Result contentChanged(String contentStr),
    Result sended(),
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
    @required Result postChanged(_PostChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postChanged(_PostChanged value),
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
abstract class _$PostChangedCopyWith<$Res> {
  factory _$PostChangedCopyWith(
          _PostChanged value, $Res Function(_PostChanged) then) =
      __$PostChangedCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$PostChangedCopyWithImpl<$Res> extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$PostChangedCopyWith<$Res> {
  __$PostChangedCopyWithImpl(
      _PostChanged _value, $Res Function(_PostChanged) _then)
      : super(_value, (v) => _then(v as _PostChanged));

  @override
  _PostChanged get _value => super._value as _PostChanged;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_PostChanged(
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
class _$_PostChanged implements _PostChanged {
  const _$_PostChanged(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'ChatFormEvent.postChanged(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostChanged &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$PostChangedCopyWith<_PostChanged> get copyWith =>
      __$PostChangedCopyWithImpl<_PostChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Message> initialMessageOption),
    @required Result postChanged(Post post),
    @required Result contentChanged(String contentStr),
    @required Result sended(),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return postChanged(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postChanged(Post post),
    Result contentChanged(String contentStr),
    Result sended(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postChanged != null) {
      return postChanged(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postChanged(_PostChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return postChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postChanged(_PostChanged value),
    Result contentChanged(_ContentChanged value),
    Result sended(_Send value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postChanged != null) {
      return postChanged(this);
    }
    return orElse();
  }
}

abstract class _PostChanged implements ChatFormEvent {
  const factory _PostChanged(Post post) = _$_PostChanged;

  Post get post;
  _$PostChangedCopyWith<_PostChanged> get copyWith;
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
    @required Result postChanged(Post post),
    @required Result contentChanged(String contentStr),
    @required Result sended(),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return contentChanged(contentStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postChanged(Post post),
    Result contentChanged(String contentStr),
    Result sended(),
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
    @required Result postChanged(_PostChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postChanged(_PostChanged value),
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
}

/// @nodoc
class __$SendCopyWithImpl<$Res> extends _$ChatFormEventCopyWithImpl<$Res>
    implements _$SendCopyWith<$Res> {
  __$SendCopyWithImpl(_Send _value, $Res Function(_Send) _then)
      : super(_value, (v) => _then(v as _Send));

  @override
  _Send get _value => super._value as _Send;
}

/// @nodoc
class _$_Send implements _Send {
  const _$_Send();

  @override
  String toString() {
    return 'ChatFormEvent.sended()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Send);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Message> initialMessageOption),
    @required Result postChanged(Post post),
    @required Result contentChanged(String contentStr),
    @required Result sended(),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return sended();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Message> initialMessageOption),
    Result postChanged(Post post),
    Result contentChanged(String contentStr),
    Result sended(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sended != null) {
      return sended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result postChanged(_PostChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result sended(_Send value),
  }) {
    assert(initialized != null);
    assert(postChanged != null);
    assert(contentChanged != null);
    assert(sended != null);
    return sended(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result postChanged(_PostChanged value),
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
  const factory _Send() = _$_Send;
}

/// @nodoc
class _$ChatFormStateTearOff {
  const _$ChatFormStateTearOff();

// ignore: unused_element
  _ChatFormState call(
      {@required
          Message message,
      @required
          Post post,
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
      post: post,
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
  Post get post;
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
      Post post,
      bool showErrorMessages,
      bool isEditing,
      bool isSending,
      Option<Either<MessageFailure, Unit>> sendFailureOrSuccessOption});

  $MessageCopyWith<$Res> get message;
  $PostCopyWith<$Res> get post;
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
    Object post = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSending = freezed,
    Object sendFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as Message,
      post: post == freezed ? _value.post : post as Post,
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
abstract class _$ChatFormStateCopyWith<$Res>
    implements $ChatFormStateCopyWith<$Res> {
  factory _$ChatFormStateCopyWith(
          _ChatFormState value, $Res Function(_ChatFormState) then) =
      __$ChatFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Message message,
      Post post,
      bool showErrorMessages,
      bool isEditing,
      bool isSending,
      Option<Either<MessageFailure, Unit>> sendFailureOrSuccessOption});

  @override
  $MessageCopyWith<$Res> get message;
  @override
  $PostCopyWith<$Res> get post;
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
    Object post = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSending = freezed,
    Object sendFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChatFormState(
      message: message == freezed ? _value.message : message as Message,
      post: post == freezed ? _value.post : post as Post,
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
      @required this.post,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSending,
      @required this.sendFailureOrSuccessOption})
      : assert(message != null),
        assert(post != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSending != null),
        assert(sendFailureOrSuccessOption != null);

  @override
  final Message message;
  @override
  final Post post;
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
    return 'ChatFormState(message: $message, post: $post, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSending: $isSending, sendFailureOrSuccessOption: $sendFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatFormState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
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
      const DeepCollectionEquality().hash(post) ^
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
          Post post,
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
  Post get post;
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
