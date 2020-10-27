import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:phonesed/infrastructure/core/json_converters.dart';

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
    @required @ServerTimestampConverter() FieldValue joinDate,
    @required int numberOfPublishedPosts,
    @required bool verified,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
        id: user.id.getOrCrash(),
        name: user.name.getOrCrash(),
        email: user.email.getOrCrash(),
        avatar: user.avatarUrl,
        joinDate: FieldValue.serverTimestamp(),
        numberOfPublishedPosts: user.numOfPublishedPosts,
        verified: user.verified);
  }

  User toDomain() {
    return User(
        id: UniqueId.fromUniqueString(id),
        name: UserName(name),
        email: EmailAddress(email),
        avatarUrl: avatar,
        joinDate: DateTime.parse(joinDate.toString()),
        numOfPublishedPosts: numberOfPublishedPosts,
        verified: verified);
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
