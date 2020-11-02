import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/auth/auth_failure.dart';
import 'package:phonesed/domain/auth/i_auth_facade.dart';

part 'social_sign_in_event.dart';
part 'social_sign_in_state.dart';
part 'social_sign_in_bloc.freezed.dart';

@injectable
class SocialSignInBloc extends Bloc<SocialSignInEvent, SocialSignInState> {
  final IAuthFacade _authFacade;

  SocialSignInBloc(this._authFacade) : super(SocialSignInState.initial());

  @override
  Stream<SocialSignInState> mapEventToState(
    SocialSignInEvent event,
  ) async* {
    yield* event.map(signInWithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    });
  }
}
