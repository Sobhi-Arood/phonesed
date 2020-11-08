part of 'post_form_areas_bloc.dart';

@freezed
abstract class PostFormAreasEvent with _$PostFormAreasEvent {
  const factory PostFormAreasEvent.getAreasStarted(String city) =
      _GetAreasStarted;
  const factory PostFormAreasEvent.areasReceived(
      Either<PostFailure, KtList<String>> failureOrPosts) = _AreasReceived;
}
