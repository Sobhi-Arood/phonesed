import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/chats/i_chat_repository.dart';
import 'package:phonesed/domain/chats/message_failure.dart';
import 'package:phonesed/domain/entities/message.dart';

part 'chat_watcher_event.dart';
part 'chat_watcher_state.dart';
part 'chat_watcher_bloc.freezed.dart';

@injectable
class ChatWatcherBloc extends Bloc<ChatWatcherEvent, ChatWatcherState> {
  final IChatRepository _chatRepository;
  ChatWatcherBloc(this._chatRepository)
      : super(const ChatWatcherState.initial());

  StreamSubscription<Either<MessageFailure, KtList<Message>>>
      _chatStreamSubscription;

  @override
  Stream<ChatWatcherState> mapEventToState(
    ChatWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const ChatWatcherState.loadInProgress();
      await _chatStreamSubscription?.cancel();
      _chatStreamSubscription = _chatRepository
          .watchAllMessages(e.conversationId)
          .listen((failureOrMessages) =>
              add(ChatWatcherEvent.messagesReceived(failureOrMessages)));
    }, messagesReceived: (e) async* {
      yield e.failureOrMessages.fold((f) => ChatWatcherState.loadFailure(f),
          (messages) => ChatWatcherState.loadSuccess(messages));
    });
  }

  @override
  Future<void> close() async {
    await _chatStreamSubscription?.cancel();
    return super.close();
  }
}
