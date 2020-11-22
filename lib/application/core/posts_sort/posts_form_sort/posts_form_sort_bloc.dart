import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/constants.dart';

part 'posts_form_sort_event.dart';
part 'posts_form_sort_state.dart';
part 'posts_form_sort_bloc.freezed.dart';

@injectable
class PostsFormSortBloc extends Bloc<PostsFormSortEvent, PostsFormSortState> {
  PostsFormSortBloc() : super(PostsFormSortState.initial());

  @override
  Stream<PostsFormSortState> mapEventToState(
    PostsFormSortEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          sortValue: kSortPriceChooses[0],
        );
      },
      sortValueChanged: (e) async* {
        yield state.copyWith(
          sortValue: e.value,
        );
      },
    );
  }
}
