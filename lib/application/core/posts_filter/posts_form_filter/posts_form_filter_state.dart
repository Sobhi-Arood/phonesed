part of 'posts_form_filter_bloc.dart';

@freezed
abstract class PostsFormFilterState with _$PostsFormFilterState {
  const factory PostsFormFilterState({
    @required String city,
    @required String brand,
    @required bool exchangable,
    @required bool headphones,
    @required int maxPrice,
  }) = _PostsFormFilterState;

  factory PostsFormFilterState.initial() => PostsFormFilterState(
        city: '',
        brand: '',
        exchangable: false,
        headphones: false,
        maxPrice: 0,
      );
}
