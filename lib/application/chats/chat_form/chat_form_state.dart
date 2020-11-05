part of 'chat_form_bloc.dart';

@freezed
abstract class ChatFormState with _$ChatFormState {
  const factory ChatFormState({
    @required Message message,
    @required Post post,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSending,
    @required Option<Either<MessageFailure, Unit>> sendFailureOrSuccessOption,
  }) = _ChatFormState;

  factory ChatFormState.initial() => ChatFormState(
      message: Message.empty(),
      post: Post.empty(),
      showErrorMessages: false,
      isEditing: false,
      isSending: false,
      sendFailureOrSuccessOption: none());
}
