part of 'post_form_devices_bloc.dart';

@freezed
abstract class PostFormDevicesEvent with _$PostFormDevicesEvent {
  const factory PostFormDevicesEvent.getDevicesStarted(String brand) =
      _GetDevicesStarted;
  const factory PostFormDevicesEvent.devicesReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _DevicesReceived;
}
