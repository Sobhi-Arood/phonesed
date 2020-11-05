part of 'conversations_watcher_bloc.dart';

@freezed
abstract class ConversationsWatcherEvent with _$ConversationsWatcherEvent {
  const factory ConversationsWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ConversationsWatcherEvent.conversationsReceived(
          Either<MessageFailure, KtList<Conversation>> failureOrMessages) =
      _ConversationsReceived;
}
