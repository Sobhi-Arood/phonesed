part of 'posts_value_sort_bloc.dart';

@freezed
abstract class PostsValueSortEvent with _$PostsValueSortEvent {
  const factory PostsValueSortEvent.sortValueChanged(String value) =
      _SortValueChanged;
  // const factory PostsValueSortEvent.sortValueCancelled() = _SortValueCancelled;
  const factory PostsValueSortEvent.sortValueRecevied(KtList<Post> posts) =
      _SortValueRecevied;
}
