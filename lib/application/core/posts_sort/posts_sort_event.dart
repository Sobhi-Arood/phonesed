part of 'posts_sort_bloc.dart';

@freezed
abstract class PostsSortEvent with _$PostsSortEvent {
  const factory PostsSortEvent.opened() = _Opened;
  const factory PostsSortEvent.closed() = _Closed;
}
