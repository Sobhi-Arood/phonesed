part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileEvent with _$UserProfileEvent {
  // const factory UserProfileEvent.initialized(Option<User> initialUserOption) =
  //     _Initialized;
  const factory UserProfileEvent.initialized() = _Initialized;
  const factory UserProfileEvent.avatarChanged(String avatarImgUrl) =
      _AvatarChanged;
  const factory UserProfileEvent.userNameChanged(String usernameStr) =
      _UserNameChanged;
  const factory UserProfileEvent.phoneNumberChanged(String phoneNumberStr) =
      _PhoneNumberChanged;
  // const factory UserProfileEvent.saved() = _Saved;
  // const factory UserProfileEvent.started() = _Started;
  const factory UserProfileEvent.dataReceived(
      Either<PostFailure, User> failureOrData) = _DataReceived;
}
