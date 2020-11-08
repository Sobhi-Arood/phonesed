part of 'post_form_devices_bloc.dart';

@freezed
abstract class PostFormDevicesState with _$PostFormDevicesState {
  const factory PostFormDevicesState.initial() = _Initial;
  const factory PostFormDevicesState.loadInProgress() = _LoadInProgress;
  const factory PostFormDevicesState.loadCitiesSuccess(KtList<String> data) =
      _LoadCitiesSuccess;
  const factory PostFormDevicesState.loadCitiesFailure(
      PostFailure postFailure) = _LoadCitiesFailure;
}
