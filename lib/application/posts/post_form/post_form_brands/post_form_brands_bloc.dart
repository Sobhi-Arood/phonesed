import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/posts/i_form_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

part 'post_form_brands_event.dart';
part 'post_form_brands_state.dart';
part 'post_form_brands_bloc.freezed.dart';

@injectable
class PostFormBrandsBloc
    extends Bloc<PostFormBrandsEvent, PostFormBrandsState> {
  final IFormRepository _formRepository;
  PostFormBrandsBloc(this._formRepository)
      : super(const PostFormBrandsState.initial());

  @override
  Stream<PostFormBrandsState> mapEventToState(
    PostFormBrandsEvent event,
  ) async* {
    yield* event.map(getBrandsStarted: (e) async* {
      yield const PostFormBrandsState.loadInProgress();
      final brands = await _formRepository.getBrands();
      add(PostFormBrandsEvent.brandsReceived(brands));
    }, brandsReceived: (e) async* {
      yield e.failureOrPosts.fold(
          (f) => PostFormBrandsState.loadBrandsFailure(f),
          (data) => PostFormBrandsState.loadBrandsSuccess(data));
    });
  }
}
