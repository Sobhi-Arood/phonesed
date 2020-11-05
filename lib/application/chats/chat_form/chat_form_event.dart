part of 'chat_form_bloc.dart';

@freezed
abstract class ChatFormEvent with _$ChatFormEvent {
  const factory ChatFormEvent.initialized(
      Option<Message> initialMessageOption) = _Initialized;
  const factory ChatFormEvent.postChanged(Post post) = _PostChanged;
  const factory ChatFormEvent.contentChanged(String contentStr) =
      _ContentChanged;
  const factory ChatFormEvent.sended() = _Send;
}
