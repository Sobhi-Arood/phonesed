part of 'chat_watcher_bloc.dart';

@freezed
abstract class ChatWatcherState with _$ChatWatcherState {
  const factory ChatWatcherState.initial() = _Initial;
  const factory ChatWatcherState.loadInProgress() = _LoadInProgress;
  const factory ChatWatcherState.loadSuccess(KtList<Message> messages) =
      _LoadSuccess;
  const factory ChatWatcherState.loadFailure(MessageFailure messageFailure) =
      _LoadFailure;
}
