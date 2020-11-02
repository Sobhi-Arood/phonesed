import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/core/avatar/avatar_picker_failure.dart';
import 'package:phonesed/domain/core/avatar/i_avatar_picker.dart';

part 'avatar_user_event.dart';
part 'avatar_user_state.dart';
part 'avatar_user_bloc.freezed.dart';

@injectable
class AvatarUserBloc extends Bloc<AvatarUserEvent, AvatarUserState> {
  final IAvatarPickerFacade _avatarPickerFacade;
  AvatarUserBloc(this._avatarPickerFacade)
      : super(const AvatarUserState.initial());

  @override
  Stream<AvatarUserState> mapEventToState(
    AvatarUserEvent event,
  ) async* {
    yield const AvatarUserState.actionInProgress();
    final possibleFailure = await _avatarPickerFacade.pickImage();
    yield possibleFailure.fold(
      (f) => AvatarUserState.pickImgFailure(f),
      (url) => AvatarUserState.pickImgSuccess(url),
    );
    // yield* event.map(
    //     started: (e) async* {},
    //     avatarClicked: (e) async* {
    //       final o = await _avatarPickerFacade.pickImage();
    //       add(AvatarUserEvent.dataReceived(o));
    //     },
    //     dataReceived: (e) async* {
    //       yield e.failureOrData.fold((f) => AvatarUserState.loadFailure(f),
    //           (r) => AvatarUserState.loadSuccess(r));
    //     });
  }
}
