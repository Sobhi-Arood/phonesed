import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/failures.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

part 'post.freezed.dart';

@freezed
abstract class Post implements _$Post {
  const Post._();
  const factory Post({
    @required UniqueId id,
    @required PostTitle title,
    @required PostPrice price,
    @required PostDescription description,
    @required PostImagesList<String> images,
    @required PostPublishedDate publishedDate,
    @required PostCity city,
    @required PostArea area,
    @required String country,
    @required PostMoreAccessories moreAccessories,
    @required bool avaliable,
    @required bool exhangable,
    @required bool negiotable,
    @required bool headphones,
    @required bool charger,
    @required PostBrand brand,
    @required PostDevice device,
    @required PostAge age,
    @required PostCondition condition,
    UniqueId userId,
    String userAvatar,
    UserName userName,
  }) = _Post;

  factory Post.empty() => Post(
        id: UniqueId(),
        title: PostTitle(''),
        price: PostPrice(0),
        description: PostDescription(''),
        images: PostImagesList(emptyList()),
        publishedDate: PostPublishedDate(DateTime.now()),
        city: PostCity(''),
        area: PostArea(''),
        country: 'UAE',
        moreAccessories: PostMoreAccessories(''),
        avaliable: true,
        exhangable: false,
        negiotable: false,
        headphones: false,
        charger: false,
        brand: PostBrand(''),
        device: PostDevice(''),
        age: PostAge(PostAge.ages[0]),
        condition: PostCondition(PostCondition.conditions[0]),
        // userId: UniqueId.fromUniqueString(userId),
        // userAvatart: avatar,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(images.failureOrUnit)
        .fold((fail) => some(fail), (r) => none());
  }
}
