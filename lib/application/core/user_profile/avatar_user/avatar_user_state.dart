part of 'avatar_user_bloc.dart';

@freezed
abstract class AvatarUserState with _$AvatarUserState {
  const factory AvatarUserState.initial() = _Initial;
  const factory AvatarUserState.actionInProgress() = _ActionInProgress;
  const factory AvatarUserState.pickImgFailure(
      AvatarPickerFailure valueFailure) = _PickImgFailure;
  const factory AvatarUserState.pickImgSuccess(String url) = _PickImgSuccess;
}
