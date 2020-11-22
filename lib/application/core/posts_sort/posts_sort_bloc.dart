import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'posts_sort_event.dart';
part 'posts_sort_state.dart';
part 'posts_sort_bloc.freezed.dart';

@injectable
class PostsSortBloc extends Bloc<PostsSortEvent, PostsSortState> {
  PostsSortBloc() : super(const PostsSortState.widgetClose());

  @override
  Stream<PostsSortState> mapEventToState(
    PostsSortEvent event,
  ) async* {
    yield* event.map(opened: (e) async* {
      yield const PostsSortState.widgetOpen();
    }, closed: (e) async* {
      yield const PostsSortState.widgetClose();
    });
  }
}
