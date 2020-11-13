part of 'post_search_bloc.dart';

@freezed
abstract class PostSearchState with _$PostSearchState {
  const factory PostSearchState({
    // @required KtList<Post> posts,
    // @required String searchForm,
    @required bool isLoading,
    // @required bool isSubmitting,
    @required Either<PostFailure, KtList<Post>> saveFailureOrSuccessOption,
  }) = _PostSearchState;

  factory PostSearchState.initial() => PostSearchState(
      // posts: emptyList(),
      // searchForm: '',
      isLoading: false,
      // isSubmitting: false,
      saveFailureOrSuccessOption: Right(emptyList()));
  // const factory PostSearchState.loadInProgress() = _LoadInProgress;
  // const factory PostSearchState.loadCitiesSuccess(KtList<Post> posts) =
  //     _LoadCitiesSuccess;
  // const factory PostSearchState.loadCitiesFailure(PostFailure postFailure) =
  //     _LoadCitiesFailure;
}
