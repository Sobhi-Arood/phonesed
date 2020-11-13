part of 'post_search_bloc.dart';

@freezed
abstract class PostSearchEvent with _$PostSearchEvent {
  // const factory PostSearchEvent.started(Option<String> initialSearchOption) =
  //     _Started;
  const factory PostSearchEvent.searchChanged(String searchStr) =
      _SearchChanged;
  const factory PostSearchEvent.postsRecevied(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _PostsRecevied;
}
