import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/i_post_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

part 'post_actor_event.dart';
part 'post_actor_state.dart';
part 'post_actor_bloc.freezed.dart';

@injectable
class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  final IPostRepository _postRepository;
  PostActorBloc(this._postRepository) : super(const PostActorState.initial());

  @override
  Stream<PostActorState> mapEventToState(
    PostActorEvent event,
  ) async* {
    yield* event.map(liked: (e) async* {
      yield const PostActorState.actionInProgress();
      final possibleFailure =
          await _postRepository.like(event.post.id.getOrCrash());
      yield possibleFailure.fold((f) => PostActorState.likeFailure(f),
          (_) => const PostActorState.likeSuccess());
    }, unLiked: (e) async* {
      yield const PostActorState.actionInProgress();
      final possibleFailure =
          await _postRepository.unlike(event.post.id.getOrCrash());
      yield possibleFailure.fold((f) => PostActorState.likeFailure(f),
          (_) => const PostActorState.likeSuccess());
    });
  }
}
