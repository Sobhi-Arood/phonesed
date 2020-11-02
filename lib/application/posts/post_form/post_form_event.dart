part of 'post_form_bloc.dart';

@freezed
abstract class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.initialized(Option<Post> initialPostOption) =
      _Initialized;
  const factory PostFormEvent.brandChanged(String brandStr) = _BrandChanged;
  const factory PostFormEvent.deviceChanged(String deviceStr) = _DeviceChanged;
  const factory PostFormEvent.ageChanged(String ageStr) = _AgeChanged;
  const factory PostFormEvent.conditionChanged(String conditionStr) =
      _ConditionChanged;
  const factory PostFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory PostFormEvent.priceChanged(int priceStr) = _PriceChanged;
  const factory PostFormEvent.descriptionChanged(String descriptionStr) =
      _DescriptionChanged;
  const factory PostFormEvent.imagesChanged(KtList<File> images) =
      _ImagesChanged;
  const factory PostFormEvent.cityChanged(String cityStr) = _CityChanged;
  const factory PostFormEvent.areaChanged(String areaStr) = _AreaChanged;
  const factory PostFormEvent.exchangableChanged(bool exchangable) =
      _ExchangableChanged;
  const factory PostFormEvent.negotiableChanged(bool negotiable) =
      _NegotiableChanged;
  const factory PostFormEvent.headphonesChanged(bool headphones) =
      _HeadphonesChanged;
  const factory PostFormEvent.chargerChanged(bool charger) = _ChargerChanged;
  const factory PostFormEvent.moreAccContentChanged(String moreAccContentStr) =
      _MoreAccContentChanged;
  const factory PostFormEvent.saved() = _Saved;
}
