part of 'post_form_devices_bloc.dart';

@freezed
abstract class PostFormDevicesState with _$PostFormDevicesState {
  const factory PostFormDevicesState.initial() = _Initial;
  const factory PostFormDevicesState.loadInProgress() = _LoadInProgress;
  const factory PostFormDevicesState.loadDevicesSuccess(KtList<String> data) =
      _LoadDevicesSuccess;
  const factory PostFormDevicesState.loadDevicesFailure(
      PostFailure postFailure) = _LoadDevicesFailure;
}
