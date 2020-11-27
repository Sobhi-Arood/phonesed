part of 'post_form_load_data_bloc.dart';

@freezed
abstract class PostFormLoadDataState with _$PostFormLoadDataState {
  const factory PostFormLoadDataState.initial() = _Initial;
  const factory PostFormLoadDataState.loadInProgress() = _LoadInProgress;
  const factory PostFormLoadDataState.loadCitiesSuccess(
      KtList<LocationPrimitive> data) = _LoadCitiesSuccess;
  const factory PostFormLoadDataState.loadCitiesFailure(
      PostFailure postFailure) = _LoadCitiesFailure;
  const factory PostFormLoadDataState.loadAreasSuccess(KtList<String> data) =
      _LoadAreasSuccess;
  const factory PostFormLoadDataState.loadAreasFailure(
      PostFailure postFailure) = _LoadAreasFailure;
  const factory PostFormLoadDataState.loadBrandsSuccess(
      KtList<BrandPrimitive> data) = _LoadBrandsSuccess;
  const factory PostFormLoadDataState.loadBrandsFailure(
      PostFailure postFailure) = _LoadBrandsFailure;
  const factory PostFormLoadDataState.loadDevicesSuccess(KtList<String> data) =
      _LoadDevicesSuccess;
  const factory PostFormLoadDataState.loadDevicesFailure(
      PostFailure postFailure) = _LoadDevicesFailure;
}
