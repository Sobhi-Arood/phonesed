import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/chats/i_chat_repository.dart';
import 'package:phonesed/domain/chats/message_failure.dart';
import 'package:phonesed/domain/entities/conversation.dart';

part 'conversations_watcher_event.dart';
part 'conversations_watcher_state.dart';
part 'conversations_watcher_bloc.freezed.dart';

@injectable
class ConversationsWatcherBloc
    extends Bloc<ConversationsWatcherEvent, ConversationsWatcherState> {
  final IChatRepository _chatRepository;

  ConversationsWatcherBloc(this._chatRepository)
      : super(const ConversationsWatcherState.initial());

  StreamSubscription<Either<MessageFailure, KtList<Conversation>>>
      _conversationStreamSubscription;

  @override
  Stream<ConversationsWatcherState> mapEventToState(
    ConversationsWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const ConversationsWatcherState.loadInProgress();
      await _conversationStreamSubscription?.cancel();
      _conversationStreamSubscription = _chatRepository
          .watchAllConversations()
          .listen((failureOrCons) => add(
              ConversationsWatcherEvent.conversationsReceived(failureOrCons)));
    }, conversationsReceived: (e) async* {
      yield e.failureOrMessages.fold(
          (f) => ConversationsWatcherState.loadFailure(f),
          (messages) => ConversationsWatcherState.loadSuccess(messages));
    });
  }

  @override
  Future<void> close() async {
    await _conversationStreamSubscription.cancel();
    return super.close();
  }
}
