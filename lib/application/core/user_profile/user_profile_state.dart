part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  // const factory UserProfileState({
  //   @required User user,
  //   @required bool showErrorMessages,
  //   @required bool isEditing,
  //   @required bool isSaving,
  //   @required Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
  // }) = _UserProfileState;

  // factory UserProfileState.initial() => UserProfileState(
  //     user: user,
  //     showErrorMessages: false,
  //     isEditing: false,
  //     isSaving: false,
  //     saveFailureOrSuccessOption: none());
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loadInProgress() = _LoadInProgress;
  const factory UserProfileState.loadSuccess(User user) = _LoadSuccess;
  const factory UserProfileState.loadFailure(PostFailure postFailure) =
      _LoadFailure;
}
