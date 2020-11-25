part of 'post_share_bloc.dart';

@freezed
abstract class PostShareState with _$PostShareState {
  const factory PostShareState.initial() = _Initial;
  const factory PostShareState.loadInProgress() = _LoadInProgress;
  const factory PostShareState.receviedShareLink(Post post) =
      _ReceviedShareLink;
  const factory PostShareState.receviedError() = _ReceviedError;
}
