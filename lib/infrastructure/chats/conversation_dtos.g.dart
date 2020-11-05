// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConversationDto _$_$_ConversationDtoFromJson(Map<String, dynamic> json) {
  return _$_ConversationDto(
    id: json['id'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
    postId: json['postId'] as String,
    postTitle: json['postTitle'] as String,
    postImageUrl: json['postImageUrl'] as String,
    postPublishedDate: json['postPublishedDate'] == null
        ? null
        : DateTime.parse(json['postPublishedDate'] as String),
    postPrice: json['postPrice'] as int,
    recentMessageContent: json['recentMessageContent'] as String,
    recentMessageDate: json['recentMessageDate'] == null
        ? null
        : DateTime.parse(json['recentMessageDate'] as String),
    displayUserName: json['displayUserName'] as String,
  );
}

Map<String, dynamic> _$_$_ConversationDtoToJson(_$_ConversationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
      'postId': instance.postId,
      'postTitle': instance.postTitle,
      'postImageUrl': instance.postImageUrl,
      'postPublishedDate': instance.postPublishedDate?.toIso8601String(),
      'postPrice': instance.postPrice,
      'recentMessageContent': instance.recentMessageContent,
      'recentMessageDate': instance.recentMessageDate?.toIso8601String(),
      'displayUserName': instance.displayUserName,
    };
