part of 'user_profile_update_bloc.dart';

@freezed
abstract class UserProfileUpdateState with _$UserProfileUpdateState {
  const factory UserProfileUpdateState.initial() = _Initial;
}
