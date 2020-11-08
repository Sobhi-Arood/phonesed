import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/value_objects.dart';
import 'package:kt_dart/kt.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class PostDto implements _$PostDto {
  const PostDto._();
  const factory PostDto({
    @required String id,
    @required String userId,
    @required String title,
    @required int price,
    @required String description,
    @required List<String> images,
    // @required @ServerTimestampConverter() FieldValue publishedDate,
    @required DateTime publishedDate,
    @required String city,
    @required String area,
    @required String country,
    @required String moreAccessories,
    @required bool avaliable,
    @required bool exhangable,
    @required bool negiotable,
    @required bool headphones,
    @required bool charger,
    @required String brand,
    @required String device,
    @required String age,
    @required String condition,
    @required String userAvatar,
    @required String userName,
  }) = _PostDto;

  // factory PostDto.fromDomain(
  //     Post post, String uid, String userAvatar, String userName) {
  //   return PostDto(
  //     id: post.id.getOrCrash(),
  //     userId: uid,
  //     title: post.title.getOrCrash(),
  //     price: post.price.getOrCrash(),
  //     description: post.description.getOrCrash(),
  //     images: post.images.getOrCrash().asList(),
  //     publishedDate: DateTime.now(),
  //     city: post.city.getOrCrash(),
  //     area: post.area,
  //     country: post.country,
  //     moreAccessories: post.moreAccessories.getOrCrash(),
  //     avaliable: post.avaliable,
  //     exhangable: post.exhangable,
  //     negiotable: post.negiotable,
  //     headphones: post.headphones,
  //     charger: post.charger,
  //     brand: post.brand.getOrCrash(),
  //     device: post.device,
  //     age: post.age.getOrCrash(),
  //     condition: post.condition.getOrCrash(),
  //     userAvatar: userAvatar ?? '-',
  //     userName: userName,
  //   );
  // }

  Post toDomain() {
    return Post(
      id: UniqueId.fromUniqueString(id),
      title: PostTitle(title),
      price: PostPrice(price),
      description: PostDescription(description),
      images: PostImagesList(images.toImmutableList()),
      publishedDate: PostPublishedDate(publishedDate),
      city: PostCity(city),
      area: PostArea(area),
      country: country,
      moreAccessories: PostMoreAccessories(moreAccessories),
      avaliable: avaliable,
      exhangable: exhangable,
      negiotable: negiotable,
      headphones: headphones,
      charger: charger,
      brand: PostBrand(brand),
      device: PostDevice(device),
      age: PostAge(age),
      condition: PostCondition(condition),
      userId: UniqueId.fromUniqueString(userId),
      userAvatar: userAvatar,
      userName: UserName(userName),
    );
  }

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);

  factory PostDto.fromFirestore(DocumentSnapshot doc) {
    return PostDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
