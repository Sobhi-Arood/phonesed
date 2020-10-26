import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/auth/auth_failure.dart';
import 'package:phonesed/domain/auth/i_auth_facade.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;
  SignUpFormBloc(this._authFacade) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(nameChanged: (e) async* {
      yield state.copyWith(
        name: e.nameStr,
        authFailureOrSuccess: none(),
      );
    }, emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: e.emailStr,
        authFailureOrSuccess: none(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        password: e.passwordStr,
        authFailureOrSuccess: none(),
      );
    }, registerWithEmailAndPassword: (e) async* {
      Either<AuthFailure, Unit> failureOrSuccess;

      // error occured.
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      );
    });
  }
}
