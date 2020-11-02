part of 'user_profile_update_bloc.dart';

@freezed
abstract class UserProfileUpdateEvent with _$UserProfileUpdateEvent {
  const factory UserProfileUpdateEvent.initialized(
      Option<User> initialUserOption) = _Initialized;
  const factory UserProfileUpdateEvent.avatarChanged(String avatarImgUrl) =
      _AvatarChanged;
  const factory UserProfileUpdateEvent.userNameChanged(String usernameStr) =
      _UserNameChanged;
  const factory UserProfileUpdateEvent.phoneNumberChanged(
      String phoneNumberStr) = _PhoneNumberChanged;
}
