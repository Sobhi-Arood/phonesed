part of 'post_picker_image_bloc.dart';

@freezed
abstract class PostPickerImageEvent with _$PostPickerImageEvent {
  const factory PostPickerImageEvent.addClicked() = _AddClicked;
}
