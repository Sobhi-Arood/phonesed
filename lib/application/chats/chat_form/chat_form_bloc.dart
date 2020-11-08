import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/chats/i_chat_repository.dart';
import 'package:phonesed/domain/chats/message_failure.dart';
import 'package:phonesed/domain/chats/value_objects.dart';
import 'package:phonesed/domain/entities/conversation.dart';
import 'package:phonesed/domain/entities/message.dart';
import 'package:phonesed/infrastructure/posts/post_primitive_presentation.dart';

part 'chat_form_event.dart';
part 'chat_form_state.dart';
part 'chat_form_bloc.freezed.dart';

@injectable
class ChatFormBloc extends Bloc<ChatFormEvent, ChatFormState> {
  final IChatRepository _chatRepository;

  ChatFormBloc(this._chatRepository) : super(ChatFormState.initial());

  @override
  Stream<ChatFormState> mapEventToState(
    ChatFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialMessageOption.fold(
        () => state,
        (initialMessage) => state.copyWith(
          message: initialMessage,
          isEditing: true,
        ),
      );
    }, postPrimitiveChanged: (e) async* {
      yield state.copyWith(
        postPrimitive: e.postPrimitive,
        sendFailureOrSuccessOption: none(),
      );
    }, contentChanged: (e) async* {
      yield state.copyWith(
        message: state.message.copyWith(content: MessageContent(e.contentStr)),
        sendFailureOrSuccessOption: none(),
      );
    }, sended: (e) async* {
      Either<MessageFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSending: true,
        sendFailureOrSuccessOption: none(),
      );

      if (state.message.failureOption.isNone()) {
        failureOrSuccess = await _chatRepository.create(state.message,
            state.postPrimitive, e.recId, state.postPrimitive.conversationId);
      }

      yield state.copyWith(
        isSending: false,
        showErrorMessages: true,
        sendFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
