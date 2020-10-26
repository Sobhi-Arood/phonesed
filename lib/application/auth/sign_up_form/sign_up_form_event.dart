part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory SignUpFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignUpFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignUpFormEvent.registerWithEmailAndPassword() =
      RegisterWithEmailAndPassword;
}
