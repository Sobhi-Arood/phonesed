part of 'posts_sort_bloc.dart';

@freezed
abstract class PostsSortState with _$PostsSortState {
  const factory PostsSortState.widgetClose() = _WidgetClose;
  const factory PostsSortState.widgetOpen() = _WidgetOpen;
}
