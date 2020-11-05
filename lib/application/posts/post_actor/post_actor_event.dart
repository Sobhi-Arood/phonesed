part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.liked(Post post) = _Liked;
  const factory PostActorEvent.unLiked(Post post) = _UnLiked;
  const factory PostActorEvent.delete(Post post) = _Delete;
}
