part of 'posts_form_filter_bloc.dart';

@freezed
abstract class PostsFormFilterEvent with _$PostsFormFilterEvent {
  const factory PostsFormFilterEvent.initialized() = _Initialized;
  const factory PostsFormFilterEvent.cityChanged(String cityStr) = _CityChanged;
  const factory PostsFormFilterEvent.brandChanged(String brandStr) =
      _BrandChanged;
  const factory PostsFormFilterEvent.exchangableChanged(bool exchangableBool) =
      _ExchangableChanged;
  const factory PostsFormFilterEvent.headphonesChanged(bool headphonesBool) =
      _HeadphonesChanged;
  // const factory PostsFormFilterEvent.maxPriceChanged(int maxPriceInt) =
  //     _MaxPriceChanged;
  const factory PostsFormFilterEvent.priceChanged(String priceInt) =
      _PriceChanged;
  const factory PostsFormFilterEvent.reseted() = _Reseted;
  const factory PostsFormFilterEvent.submitted() = _Submitted;
}
