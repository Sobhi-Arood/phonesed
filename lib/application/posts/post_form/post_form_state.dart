part of 'post_form_bloc.dart';

@freezed
abstract class PostFormState with _$PostFormState {
  const factory PostFormState({
    @required Post post,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
  }) = _PostFormState;

  factory PostFormState.initial() => PostFormState(
        post: Post.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
