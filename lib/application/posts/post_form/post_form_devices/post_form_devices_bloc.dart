import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/posts/i_form_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

part 'post_form_devices_event.dart';
part 'post_form_devices_state.dart';
part 'post_form_devices_bloc.freezed.dart';

@injectable
class PostFormDevicesBloc
    extends Bloc<PostFormDevicesEvent, PostFormDevicesState> {
  final IFormRepository _formRepository;
  PostFormDevicesBloc(this._formRepository)
      : super(const PostFormDevicesState.initial());

  @override
  Stream<PostFormDevicesState> mapEventToState(
    PostFormDevicesEvent event,
  ) async* {
    yield* event.map(getDevicesStarted: (e) async* {
      yield const PostFormDevicesState.loadInProgress();
      final devices = await _formRepository.getDevices(e.index);
      add(PostFormDevicesEvent.devicesReceived(devices));
    }, devicesReceived: (e) async* {
      yield e.failureOrPosts.fold(
          (f) => PostFormDevicesState.loadCitiesFailure(f),
          (data) => PostFormDevicesState.loadCitiesSuccess(data));
    });
  }
}
