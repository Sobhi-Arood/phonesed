import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

part 'posts_value_sort_event.dart';
part 'posts_value_sort_state.dart';
part 'posts_value_sort_bloc.freezed.dart';

@injectable
class PostsValueSortBloc
    extends Bloc<PostsValueSortEvent, PostsValueSortState> {
  PostsValueSortBloc() : super(const PostsValueSortState.initial());

  @override
  Stream<PostsValueSortState> mapEventToState(
    PostsValueSortEvent event,
  ) async* {
    yield* event.map(
      sortValueChanged: (e) async* {
        if (e.value == kSortPriceChooses[0]) {
          // add(PostsValueSortEvent.sortValueRecevied(failureOrPosts))
        } else if (e.value == kSortPriceChooses[1]) {}
      },
      // sortValueCancelled: (e) async* {},
      sortValueRecevied: (e) async* {},
    );
  }
}
