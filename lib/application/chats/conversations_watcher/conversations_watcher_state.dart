part of 'conversations_watcher_bloc.dart';

@freezed
abstract class ConversationsWatcherState with _$ConversationsWatcherState {
  const factory ConversationsWatcherState.initial() = _Initial;
  const factory ConversationsWatcherState.loadInProgress() = _LoadInProgress;
  const factory ConversationsWatcherState.loadSuccess(
      KtList<Conversation> conversations) = _LoadSuccess;
  const factory ConversationsWatcherState.loadFailure(
      MessageFailure messageFailure) = _LoadFailure;
}
