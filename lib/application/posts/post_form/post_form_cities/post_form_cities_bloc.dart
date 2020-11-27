import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/posts/i_form_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/infrastructure/posts/post_form_primitives.dart';

part 'post_form_cities_event.dart';
part 'post_form_cities_state.dart';
part 'post_form_cities_bloc.freezed.dart';

@injectable
class PostFormCitiesBloc
    extends Bloc<PostFormCitiesEvent, PostFormCitiesState> {
  final IFormRepository _formRepository;
  PostFormCitiesBloc(this._formRepository)
      : super(const PostFormCitiesState.initial());

  @override
  Stream<PostFormCitiesState> mapEventToState(
    PostFormCitiesEvent event,
  ) async* {
    yield* event.map(getCitiesStarted: (e) async* {
      yield const PostFormCitiesState.loadInProgress();
      final cities = await _formRepository.getCities();
      add(PostFormCitiesEvent.citiesReceived(cities));
    }, citiesReceived: (e) async* {
      yield e.failureOrPosts.fold(
          (f) => PostFormCitiesState.loadCitiesFailure(f),
          (data) => PostFormCitiesState.loadCitiesSuccess(data));
    });
  }
}
