import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phonesed/domain/entities/user.dart';

part 'user_profile_update_event.dart';
part 'user_profile_update_state.dart';
part 'user_profile_update_bloc.freezed.dart';

class UserProfileUpdateBloc
    extends Bloc<UserProfileUpdateEvent, UserProfileUpdateState> {
  UserProfileUpdateBloc() : super(const _Initial());

  @override
  Stream<UserProfileUpdateState> mapEventToState(
    UserProfileUpdateEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
