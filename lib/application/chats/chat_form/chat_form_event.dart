part of 'chat_form_bloc.dart';

@freezed
abstract class ChatFormEvent with _$ChatFormEvent {
  const factory ChatFormEvent.initialized(
      Option<Message> initialMessageOption) = _Initialized;
  const factory ChatFormEvent.postPrimitiveChanged(
      PostPrimitive postPrimitive) = _PostPrimitiveChanged;
  const factory ChatFormEvent.contentChanged(String contentStr) =
      _ContentChanged;
  const factory ChatFormEvent.sended(String recId) = _Send;
}
