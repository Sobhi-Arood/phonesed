// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDto _$_$_MessageDtoFromJson(Map<String, dynamic> json) {
  return _$_MessageDto(
    senderId: json['senderId'] as String,
    recevierId: json['recevierId'] as String,
    content: json['content'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$_$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'recevierId': instance.recevierId,
      'content': instance.content,
      'date': instance.date?.toIso8601String(),
    };
