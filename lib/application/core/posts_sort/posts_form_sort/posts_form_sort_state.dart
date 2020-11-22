part of 'posts_form_sort_bloc.dart';

@freezed
abstract class PostsFormSortState with _$PostsFormSortState {
  const factory PostsFormSortState({
    @required String sortValue,
  }) = _PostsFormSortState;

  factory PostsFormSortState.initial() => PostsFormSortState(
        sortValue: kSortPriceChooses[0],
      );
}
