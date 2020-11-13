part of 'posts_filter_bloc.dart';

@freezed
abstract class PostsFilterState with _$PostsFilterState {
  const factory PostsFilterState.initial() = _Initial;
  const factory PostsFilterState.widgetOpen() = _WidgetOpen;
  const factory PostsFilterState.widgetClose() = _WidgetClose;
}
