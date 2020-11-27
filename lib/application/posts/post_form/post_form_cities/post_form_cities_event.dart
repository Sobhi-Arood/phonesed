part of 'post_form_cities_bloc.dart';

@freezed
abstract class PostFormCitiesEvent with _$PostFormCitiesEvent {
  const factory PostFormCitiesEvent.getCitiesStarted() = _GetCitiesStarted;
  const factory PostFormCitiesEvent.citiesReceived(
          Either<PostFailure, KtList<LocationPrimitive>> failureOrPosts) =
      _CitiesReceived;
}
