part of 'posts_value_sort_bloc.dart';

@freezed
abstract class PostsValueSortState with _$PostsValueSortState {
  const factory PostsValueSortState.initial() = _Initial;
  const factory PostsValueSortState.sortValue(KtList<Post> sortValue) =
      _SortValue;
}
