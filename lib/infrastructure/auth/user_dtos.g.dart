// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    avatar: json['avatar'] as String,
    phoneNumber: json['phoneNumber'] as String,
    joinDate: json['joinDate'] == null
        ? null
        : DateTime.parse(json['joinDate'] as String),
    numberOfPublishedPosts: json['numberOfPublishedPosts'] as int,
    verified: json['verified'] as bool,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'phoneNumber': instance.phoneNumber,
      'joinDate': instance.joinDate?.toIso8601String(),
      'numberOfPublishedPosts': instance.numberOfPublishedPosts,
      'verified': instance.verified,
    };
