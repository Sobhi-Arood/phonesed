part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorState with _$PostActorState {
  const factory PostActorState.initial() = _Initial;
  const factory PostActorState.actionInProgress() = _ActionInProgress;
  const factory PostActorState.likeFailure(PostFailure postFailure) =
      _LikeFailure;
  const factory PostActorState.likeSuccess() = _LikeSuccess;
}
