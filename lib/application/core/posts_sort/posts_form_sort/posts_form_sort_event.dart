part of 'posts_form_sort_bloc.dart';

@freezed
abstract class PostsFormSortEvent with _$PostsFormSortEvent {
  const factory PostsFormSortEvent.initialized() = _Initialized;
  const factory PostsFormSortEvent.sortValueChanged(String value) =
      _SortValueChanged;
}
