part of 'social_sign_in_bloc.dart';

@freezed
abstract class SocialSignInState with _$SocialSignInState {
  const factory SocialSignInState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SocialSignInState;

  factory SocialSignInState.initial() => SocialSignInState(
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
