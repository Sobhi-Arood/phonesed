// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$_$_PostDtoFromJson(Map<String, dynamic> json) {
  return _$_PostDto(
    id: json['id'] as String,
    userId: json['userId'] as String,
    title: json['title'] as String,
    price: json['price'] as int,
    description: json['description'] as String,
    images: (json['images'] as List)?.map((e) => e as String)?.toList(),
    publishedDate: json['publishedDate'] == null
        ? null
        : DateTime.parse(json['publishedDate'] as String),
    city: json['city'] as String,
    area: json['area'] as String,
    country: json['country'] as String,
    moreAccessories: json['moreAccessories'] as String,
    avaliable: json['avaliable'] as bool,
    exhangable: json['exhangable'] as bool,
    negiotable: json['negiotable'] as bool,
    headphones: json['headphones'] as bool,
    charger: json['charger'] as bool,
    brand: json['brand'] as String,
    device: json['device'] as String,
    age: json['age'] as String,
    condition: json['condition'] as String,
    userAvatar: json['userAvatar'] as String,
    userName: json['userName'] as String,
  );
}

Map<String, dynamic> _$_$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
      'publishedDate': instance.publishedDate?.toIso8601String(),
      'city': instance.city,
      'area': instance.area,
      'country': instance.country,
      'moreAccessories': instance.moreAccessories,
      'avaliable': instance.avaliable,
      'exhangable': instance.exhangable,
      'negiotable': instance.negiotable,
      'headphones': instance.headphones,
      'charger': instance.charger,
      'brand': instance.brand,
      'device': instance.device,
      'age': instance.age,
      'condition': instance.condition,
      'userAvatar': instance.userAvatar,
      'userName': instance.userName,
    };
