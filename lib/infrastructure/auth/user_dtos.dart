import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:kt_dart/kt.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();
  const factory UserDto({
    @required String id,
    @required String name,
    @required String email,
    @required String avatar,
    @required String phoneNumber,
    // @required @ServerTimestampConverter() FieldValue joinDate,
    @required DateTime joinDate,
    @required int numberOfPublishedPosts,
    @required bool verified,
    @required List<String> favorites,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      name: user.name.getOrCrash(),
      email: user.email.getOrCrash(),
      phoneNumber: user.phoneNumber,
      avatar: user.avatarUrl,
      joinDate: user.joinDate,
      numberOfPublishedPosts: user.numOfPublishedPosts,
      verified: user.verified,
      favorites: user.favorites.fold(() => [''],
          (favs) => favs.getOrCrash().map((s) => s.getOrCrash()).asList()),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      name: UserName(name),
      email: EmailAddress(email),
      phoneNumber: phoneNumber,
      avatarUrl: avatar,
      joinDate: joinDate,
      numOfPublishedPosts: numberOfPublishedPosts,
      verified: verified,
      favorites: optionOf(ListFavorites(favorites
          .map((e) => UniqueId.fromUniqueString(e))
          .toImmutableList())),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
