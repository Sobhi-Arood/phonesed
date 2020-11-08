import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/auth/i_user_repository.dart';
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IUserRepository _userRepository;

  UserProfileBloc(this._userRepository)
      : super(const UserProfileState.initial());

  StreamSubscription<Either<PostFailure, User>> _streamSubscription;

  @override
  Stream<UserProfileState> mapEventToState(
    UserProfileEvent event,
  ) async* {
    // yield* event.map(initialized: (e) async* {
    //   yield e.copyWith(

    //   )
    //   yield e.initialUserOption.fold(
    //     () => state,
    //     (a) => state.copyWith(
    //       user: a,
    //       isEditing: true,
    //     ),
    //   );
    //   // yield const UserProfileState.loadInProgress();
    //   // final user = await _userRepository.read();
    //   // yield user.fold(
    //   //     (l) => null, (r) => state.copyWith(user: r, isEditing: false));
    // }, avatarChanged: (e) async* {
    //   yield state.copyWith(
    //     user: state.user.copyWith(avatarUrl: e.avatarImgUrl),
    //     saveFailureOrSuccessOption: none(),
    //   );
    //   // _userRepository.update();
    // }, userNameChanged: (e) async* {
    //   yield state.copyWith(
    //     user: state.user.copyWith(name: UserName(e.usernameStr)),
    //     saveFailureOrSuccessOption: none(),
    //   );
    // }, phoneNumberChanged: (e) async* {
    //   yield state.copyWith(
    //     user: state.user.copyWith(phoneNumber: e.phoneNumberStr),
    //     saveFailureOrSuccessOption: none(),
    //   );
    // });

    // yield* event.map(started: (e) async* {
    //   yield const UserProfileState.loadInProgress();
    //   final user = await _userRepository.read();
    //   add(UserProfileEvent.dataReceived(user));
    // }, dataReceived: (e) async* {
    //   yield e.failureOrData.fold((f) => UserProfileState.loadFailure(f),
    //       (user) => UserProfileState.loadSuccess(user));
    // });

    yield* event.map(
      initialized: (e) async* {
        yield const UserProfileState.loadInProgress();
        await _streamSubscription?.cancel();
        _streamSubscription = _userRepository
            .watch()
            .listen((event) => add(UserProfileEvent.dataReceived(event)));
        // final user = await _userRepository.read();
        // add(UserProfileEvent.dataReceived(user));
      },
      avatarChanged: (e) async* {
        yield const UserProfileState.loadInProgress();
        final user = await _userRepository.read();
        user.fold((l) => null, (r) async {
          final u = r.copyWith(
            avatarUrl: e.avatarImgUrl,
          );
          await _userRepository.update(u);
          add(UserProfileEvent.dataReceived(user));
        });
      },
      userNameChanged: (e) async* {},
      phoneNumberChanged: (e) async* {},
      dataReceived: (e) async* {
        yield e.failureOrData.fold(
          (l) => UserProfileState.loadFailure(l),
          (r) => UserProfileState.loadSuccess(r),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
