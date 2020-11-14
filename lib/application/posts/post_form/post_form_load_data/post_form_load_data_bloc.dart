import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/posts/i_form_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/infrastructure/posts/post_form_primitives.dart';

part 'post_form_load_data_event.dart';
part 'post_form_load_data_state.dart';
part 'post_form_load_data_bloc.freezed.dart';

@injectable
class PostFormLoadDataBloc
    extends Bloc<PostFormLoadDataEvent, PostFormLoadDataState> {
  final IFormRepository _formRepository;
  PostFormLoadDataBloc(this._formRepository)
      : super(const PostFormLoadDataState.initial());

  @override
  Stream<PostFormLoadDataState> mapEventToState(
    PostFormLoadDataEvent event,
  ) async* {
    yield* event.map(getCitiesStarted: (e) async* {
      yield const PostFormLoadDataState.loadInProgress();
      final cities = await _formRepository.getCities();
      add(PostFormLoadDataEvent.citiesReceived(cities));
    }, getAreasStarted: (e) async* {
      yield const PostFormLoadDataState.loadInProgress();
      final areas = await _formRepository.getArea(e.city);
      add(PostFormLoadDataEvent.areasReceived(areas));
    }, getBrandsStarted: (e) async* {
      yield const PostFormLoadDataState.loadInProgress();
      final brands = await _formRepository.getBrands();
      add(PostFormLoadDataEvent.brandsReceived(brands));
    }, getDevicesStarted: (e) async* {
      yield const PostFormLoadDataState.loadInProgress();
      final devices = await _formRepository.getDevices(e.index);
      add(PostFormLoadDataEvent.devicesReceived(devices));
    }, citiesReceived: (e) async* {
      yield e.failureOrPosts.fold(
          (f) => PostFormLoadDataState.loadCitiesFailure(f),
          (data) => PostFormLoadDataState.loadCitiesSuccess(data));
    }, areasReceived: (e) async* {
      yield e.failureOrPosts.fold(
          (f) => PostFormLoadDataState.loadAreasFailure(f),
          (data) => PostFormLoadDataState.loadAreasSuccess(data));
    }, brandsReceived: (e) async* {
      yield e.failureOrPosts.fold(
          (f) => PostFormLoadDataState.loadBrandsFailure(f),
          (data) => PostFormLoadDataState.loadBrandsSuccess(data));
    }, devicesReceived: (e) async* {
      yield e.failureOrPosts.fold(
          (f) => PostFormLoadDataState.loadDevicesFailure(f),
          (data) => PostFormLoadDataState.loadDevicesSuccess(data));
    });
  }
}
