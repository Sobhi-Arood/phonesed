import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'posts_form_filter_event.dart';
part 'posts_form_filter_state.dart';
part 'posts_form_filter_bloc.freezed.dart';

@injectable
class PostsFormFilterBloc
    extends Bloc<PostsFormFilterEvent, PostsFormFilterState> {
  PostsFormFilterBloc() : super(PostsFormFilterState.initial());

  @override
  Stream<PostsFormFilterState> mapEventToState(
    PostsFormFilterEvent event,
  ) async* {
    yield* event.map(
        initialized: (e) async* {
          yield state.copyWith(
            city: '',
            brand: '',
            exchangable: false,
            headphones: false,
            maxPrice: 0,
          );
        },
        cityChanged: (e) async* {
          yield state.copyWith(
            city: e.cityStr,
          );
        },
        brandChanged: (e) async* {
          yield state.copyWith(
            brand: e.brandStr,
          );
        },
        exchangableChanged: (e) async* {
          yield state.copyWith(
            exchangable: e.exchangableBool,
          );
        },
        headphonesChanged: (e) async* {
          yield state.copyWith(
            headphones: e.headphonesBool,
          );
        },
        maxPriceChanged: (e) async* {
          yield state.copyWith(
            maxPrice: e.maxPriceInt,
          );
        },
        submitted: (e) async* {});
  }
}
