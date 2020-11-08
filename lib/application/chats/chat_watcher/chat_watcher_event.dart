part of 'chat_watcher_bloc.dart';

@freezed
abstract class ChatWatcherEvent with _$ChatWatcherEvent {
  const factory ChatWatcherEvent.watchAllStarted(String conversationId) =
      _WatchAllStarted;
  const factory ChatWatcherEvent.messagesReceived(
          Either<MessageFailure, KtList<Message>> failureOrMessages) =
      _MessagesReceived;
}
