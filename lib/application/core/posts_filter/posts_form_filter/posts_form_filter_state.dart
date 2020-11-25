part of 'posts_form_filter_bloc.dart';

@freezed
abstract class PostsFormFilterState with _$PostsFormFilterState {
  const factory PostsFormFilterState({
    @required String city,
    @required String brand,
    @required bool exchangable,
    @required bool headphones,
    @required String price,
    // @required int maxPrice,
    // @required int minPrice,
  }) = _PostsFormFilterState;

  factory PostsFormFilterState.initial() => PostsFormFilterState(
        city: kFilterCities[0],
        brand: kFilterBrands[0],
        exchangable: false,
        headphones: false,
        price: kFilterPrices[0],
        // maxPrice: 0,
        // minPrice: 0,
      );
}
