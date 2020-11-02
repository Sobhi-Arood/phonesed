import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/i_post_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

part 'post_form_event.dart';
part 'post_form_state.dart';
part 'post_form_bloc.freezed.dart';

@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  final IPostRepository _postRepository;
  PostFormBloc(this._postRepository) : super(PostFormState.initial());

  @override
  Stream<PostFormState> mapEventToState(
    PostFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialPostOption.fold(
        () => state,
        (initialPost) => state.copyWith(
          post: initialPost,
          isEditing: true,
        ),
      );
    }, brandChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(brand: PostBrand(e.brandStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, deviceChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(device: e.deviceStr),
        saveFailureOrSuccessOption: none(),
      );
    }, ageChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(age: PostAge(e.ageStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, conditionChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(condition: PostCondition(e.conditionStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, titleChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(title: PostTitle(e.titleStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, priceChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(price: PostPrice(e.priceStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, descriptionChanged: (e) async* {
      yield state.copyWith(
        post:
            state.post.copyWith(description: PostDescription(e.descriptionStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, imagesChanged: (e) async* {
      yield state.copyWith(
        post: state.post
            .copyWith(images: PostImagesList(e.images.map((img) => img.path))),
        saveFailureOrSuccessOption: none(),
      );
    }, cityChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(city: PostCity(e.cityStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, areaChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(area: e.areaStr),
        saveFailureOrSuccessOption: none(),
      );
    }, exchangableChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(exhangable: e.exchangable),
        saveFailureOrSuccessOption: none(),
      );
    }, negotiableChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(negiotable: e.negotiable),
        saveFailureOrSuccessOption: none(),
      );
    }, headphonesChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(headphones: e.headphones),
        saveFailureOrSuccessOption: none(),
      );
    }, chargerChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(charger: e.charger),
        saveFailureOrSuccessOption: none(),
      );
    }, moreAccContentChanged: (e) async* {
      yield state.copyWith(
        post: state.post.copyWith(
            moreAccessories: PostMoreAccessories(e.moreAccContentStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, saved: (e) async* {
      Either<PostFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      if (state.post.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _postRepository.update(state.post)
            : await _postRepository.create(state.post);
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
