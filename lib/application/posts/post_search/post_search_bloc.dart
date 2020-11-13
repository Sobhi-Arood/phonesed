import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/i_post_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

part 'post_search_event.dart';
part 'post_search_state.dart';
part 'post_search_bloc.freezed.dart';

@injectable
class PostSearchBloc extends Bloc<PostSearchEvent, PostSearchState> {
  final IPostRepository _postRepository;
  PostSearchBloc(this._postRepository) : super(PostSearchState.initial());

  StreamSubscription<Either<PostFailure, KtList<Post>>> _postStreamSubscription;

  @override
  Stream<PostSearchState> mapEventToState(
    PostSearchEvent event,
  ) async* {
    yield* event.map(searchChanged: (e) async* {
      await _postStreamSubscription?.cancel();
      yield state.copyWith(
        isLoading: true,
      );

      // print(e.searchStr);

      _postStreamSubscription = _postRepository
          .fetchSearchPosts(e.searchStr)
          .listen((failureOrPosts) =>
              add(PostSearchEvent.postsRecevied(failureOrPosts)));

      // yield state.copyWith(
      //   // isLoading: false,
      //   saveFailureOrSuccessOption: failureOrSuccess,
      // );

      // yield state.copyWith(
      //   isLoading: false,
      //   // saveFailureOrSuccessOption: failureOrSuccess,
      // );
    }, postsRecevied: (e) async* {
      yield e.failureOrPosts.fold(
          (l) => state.copyWith(
              saveFailureOrSuccessOption: Left(l), isLoading: false),
          (r) => state.copyWith(
              saveFailureOrSuccessOption: Right(r), isLoading: false));
    });
  }

  @override
  Future<void> close() async {
    await _postStreamSubscription?.cancel();
    return super.close();
  }
}
