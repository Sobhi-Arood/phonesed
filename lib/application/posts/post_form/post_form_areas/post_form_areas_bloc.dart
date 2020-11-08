import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/posts/i_form_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

part 'post_form_areas_event.dart';
part 'post_form_areas_state.dart';
part 'post_form_areas_bloc.freezed.dart';

@injectable
class PostFormAreasBloc extends Bloc<PostFormAreasEvent, PostFormAreasState> {
  final IFormRepository _formRepository;
  PostFormAreasBloc(this._formRepository)
      : super(const PostFormAreasState.initial());

  @override
  Stream<PostFormAreasState> mapEventToState(
    PostFormAreasEvent event,
  ) async* {
    yield* event.map(getAreasStarted: (e) async* {
      yield const PostFormAreasState.loadInProgress();
      final areas = await _formRepository.getArea(e.city);
      add(PostFormAreasEvent.areasReceived(areas));
    }, areasReceived: (e) async* {
      yield e.failureOrPosts.fold((f) => PostFormAreasState.loadAreasFailure(f),
          (data) => PostFormAreasState.loadAreasSuccess(data));
    });
  }
}
