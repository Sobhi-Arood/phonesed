part of 'social_sign_in_bloc.dart';

@freezed
abstract class SocialSignInEvent with _$SocialSignInEvent {
  const factory SocialSignInEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
