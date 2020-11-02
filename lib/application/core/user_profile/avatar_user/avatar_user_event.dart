part of 'avatar_user_bloc.dart';

@freezed
abstract class AvatarUserEvent with _$AvatarUserEvent {
  const factory AvatarUserEvent.avatarClicked() = _AvatarClicked;
}
