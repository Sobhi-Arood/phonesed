import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'posts_filter_event.dart';
part 'posts_filter_state.dart';
part 'posts_filter_bloc.freezed.dart';

@injectable
class PostsFilterBloc extends Bloc<PostsFilterEvent, PostsFilterState> {
  PostsFilterBloc() : super(const PostsFilterState.initial());

  @override
  Stream<PostsFilterState> mapEventToState(
    PostsFilterEvent event,
  ) async* {
    yield* event.map(opened: (e) async* {
      yield const PostsFilterState.widgetOpen();
    }, closed: (e) async* {
      yield const PostsFilterState.widgetClose();
    });
  }
}
