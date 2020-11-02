part of 'post_picker_image_bloc.dart';

@freezed
abstract class PostPickerImageState with _$PostPickerImageState {
  const factory PostPickerImageState.initial() = _Initial;
  const factory PostPickerImageState.actionInProgress() = _ActionInProgress;
  const factory PostPickerImageState.pickImgFailure(
      AvatarPickerFailure valueFailure) = _PickImgFailure;
  const factory PostPickerImageState.pickImgSuccess(File img) = _PickImgSuccess;
}
