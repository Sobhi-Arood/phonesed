part of 'post_form_load_data_bloc.dart';

@freezed
abstract class PostFormLoadDataEvent with _$PostFormLoadDataEvent {
  const factory PostFormLoadDataEvent.getCitiesStarted() = _GetCitiesStarted;
  const factory PostFormLoadDataEvent.getAreasStarted(String city) =
      _GetAreasStarted;
  const factory PostFormLoadDataEvent.getBrandsStarted() = _GetBrandsStarted;
  const factory PostFormLoadDataEvent.getDevicesStarted(String brand) =
      _GetDevicesStarted;
  const factory PostFormLoadDataEvent.citiesReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _CitiesReceived;
  const factory PostFormLoadDataEvent.areasReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _AreasReceived;
  const factory PostFormLoadDataEvent.brandsReceived(
          Either<PostFailure, KtList<BrandPrimitive>> failureOrPosts) =
      _BrandsReceived;
  const factory PostFormLoadDataEvent.devicesReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _DevicesReceived;
}
