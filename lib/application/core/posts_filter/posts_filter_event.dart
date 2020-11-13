part of 'posts_filter_bloc.dart';

@freezed
abstract class PostsFilterEvent with _$PostsFilterEvent {
  const factory PostsFilterEvent.opened() = _Opened;
  const factory PostsFilterEvent.closed() = _Closed;
}
