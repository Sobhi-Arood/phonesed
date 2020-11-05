// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
class _$MessageDtoTearOff {
  const _$MessageDtoTearOff();

// ignore: unused_element
  _MessageDto call(
      {@JsonKey(ignore: true) String id,
      @required String senderId,
      @required String recevierId,
      @required String content,
      @required DateTime date}) {
    return _MessageDto(
      id: id,
      senderId: senderId,
      recevierId: recevierId,
      content: content,
      date: date,
    );
  }

// ignore: unused_element
  MessageDto fromJson(Map<String, Object> json) {
    return MessageDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MessageDto = _$MessageDtoTearOff();

/// @nodoc
mixin _$MessageDto {
  @JsonKey(ignore: true)
  String get id; // @required String id,
  String get senderId;
  String get recevierId;
  String get content;
  DateTime get date;

  Map<String, dynamic> toJson();
  $MessageDtoCopyWith<MessageDto> get copyWith;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String senderId,
      String recevierId,
      String content,
      DateTime date});
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res> implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  final MessageDto _value;
  // ignore: unused_field
  final $Res Function(MessageDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object recevierId = freezed,
    Object content = freezed,
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      recevierId:
          recevierId == freezed ? _value.recevierId : recevierId as String,
      content: content == freezed ? _value.content : content as String,
      date: date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MessageDtoCopyWith<$Res> implements $MessageDtoCopyWith<$Res> {
  factory _$MessageDtoCopyWith(
          _MessageDto value, $Res Function(_MessageDto) then) =
      __$MessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String senderId,
      String recevierId,
      String content,
      DateTime date});
}

/// @nodoc
class __$MessageDtoCopyWithImpl<$Res> extends _$MessageDtoCopyWithImpl<$Res>
    implements _$MessageDtoCopyWith<$Res> {
  __$MessageDtoCopyWithImpl(
      _MessageDto _value, $Res Function(_MessageDto) _then)
      : super(_value, (v) => _then(v as _MessageDto));

  @override
  _MessageDto get _value => super._value as _MessageDto;

  @override
  $Res call({
    Object id = freezed,
    Object senderId = freezed,
    Object recevierId = freezed,
    Object content = freezed,
    Object date = freezed,
  }) {
    return _then(_MessageDto(
      id: id == freezed ? _value.id : id as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      recevierId:
          recevierId == freezed ? _value.recevierId : recevierId as String,
      content: content == freezed ? _value.content : content as String,
      date: date == freezed ? _value.date : date as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MessageDto extends _MessageDto {
  const _$_MessageDto(
      {@JsonKey(ignore: true) this.id,
      @required this.senderId,
      @required this.recevierId,
      @required this.content,
      @required this.date})
      : assert(senderId != null),
        assert(recevierId != null),
        assert(content != null),
        assert(date != null),
        super._();

  factory _$_MessageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override // @required String id,
  final String senderId;
  @override
  final String recevierId;
  @override
  final String content;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'MessageDto(id: $id, senderId: $senderId, recevierId: $recevierId, content: $content, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageDto &&
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
  _$MessageDtoCopyWith<_MessageDto> get copyWith =>
      __$MessageDtoCopyWithImpl<_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageDtoToJson(this);
  }
}

abstract class _MessageDto extends MessageDto {
  const _MessageDto._() : super._();
  const factory _MessageDto(
      {@JsonKey(ignore: true) String id,
      @required String senderId,
      @required String recevierId,
      @required String content,
      @required DateTime date}) = _$_MessageDto;

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$_MessageDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override // @required String id,
  String get senderId;
  @override
  String get recevierId;
  @override
  String get content;
  @override
  DateTime get date;
  @override
  _$MessageDtoCopyWith<_MessageDto> get copyWith;
}
