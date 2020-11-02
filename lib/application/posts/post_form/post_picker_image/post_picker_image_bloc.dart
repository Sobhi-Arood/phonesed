import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/core/avatar/avatar_picker_failure.dart';
import 'package:phonesed/domain/core/avatar/i_avatar_picker.dart';

part 'post_picker_image_event.dart';
part 'post_picker_image_state.dart';
part 'post_picker_image_bloc.freezed.dart';

@injectable
class PostPickerImageBloc
    extends Bloc<PostPickerImageEvent, PostPickerImageState> {
  final IAvatarPickerFacade _avatarPickerFacade;
  PostPickerImageBloc(this._avatarPickerFacade)
      : super(const PostPickerImageState.initial());

  @override
  Stream<PostPickerImageState> mapEventToState(
    PostPickerImageEvent event,
  ) async* {
    yield const PostPickerImageState.actionInProgress();
    final possibleFailure = await _avatarPickerFacade.pickPostImage();
    yield possibleFailure.fold(
      (f) => PostPickerImageState.pickImgFailure(f),
      (file) => PostPickerImageState.pickImgSuccess(file),
    );
  }
}
