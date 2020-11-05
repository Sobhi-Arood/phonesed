// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

// ignore: unused_element
  _Message call(
      {@required UniqueId id,
      @required UniqueId senderId,
      @required UniqueId recevierId,
      @required MessageContent content,
      @required PostPublishedDate date}) {
    return _Message(
      id: id,
      senderId: senderId,
      recevierId: recevierId,
      content: content,
      date: date,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  UniqueId get id;
  UniqueId get senderId;
  UniqueId get recevierId;
  MessageContent get content;
  PostPublishedDate get date;

  $MessageCopyWith<Message> get copyWith;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId senderId,
      UniqueId recevierId,
      MessageContent content,
      PostPublishedDate date});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object recevierId = freezed,
    Object content = freezed,
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      senderId: senderId == freezed ? _value.senderId : senderId as UniqueId,
      recevierId:
          recevierId == freezed ? _value.recevierId : recevierId as UniqueId,
      content: content == freezed ? _value.content : content as MessageContent,
      date: date == freezed ? _value.date : date as PostPublishedDate,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId senderId,
      UniqueId recevierId,
      MessageContent content,
      PostPublishedDate date});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object recevierId = freezed,
    Object content = freezed,
    Object date = freezed,
  }) {
    return _then(_Message(
      id: id == freezed ? _value.id : id as UniqueId,
      senderId: senderId == freezed ? _value.senderId : senderId as UniqueId,
      recevierId:
          recevierId == freezed ? _value.recevierId : recevierId as UniqueId,
      content: content == freezed ? _value.content : content as MessageContent,
      date: date == freezed ? _value.date : date as PostPublishedDate,
    ));
  }
}

/// @nodoc
class _$_Message extends _Message {
  const _$_Message(
      {@required this.id,
      @required this.senderId,
      @required this.recevierId,
      @required this.content,
      @required this.date})
      : assert(id != null),
        assert(senderId != null),
        assert(recevierId != null),
        assert(content != null),
        assert(date != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId senderId;
  @override
  final UniqueId recevierId;
  @override
  final MessageContent content;
  @override
  final PostPublishedDate date;

  @override
  String toString() {
    return 'Message(id: $id, senderId: $senderId, recevierId: $recevierId, content: $content, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.recevierId, recevierId) ||
                const DeepCollectionEquality()
                    .equals(other.recevierId, recevierId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(recevierId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(date);

  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message extends Message {
  const _Message._() : super._();
  const factory _Message(
      {@required UniqueId id,
      @required UniqueId senderId,
      @required UniqueId recevierId,
      @required MessageContent content,
      @required PostPublishedDate date}) = _$_Message;

  @override
  UniqueId get id;
  @override
  UniqueId get senderId;
  @override
  UniqueId get recevierId;
  @override
  MessageContent get content;
  @override
  PostPublishedDate get date;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}
