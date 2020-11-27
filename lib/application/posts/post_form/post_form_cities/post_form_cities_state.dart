part of 'post_form_cities_bloc.dart';

@freezed
abstract class PostFormCitiesState with _$PostFormCitiesState {
  const factory PostFormCitiesState.initial() = _Initial;
  const factory PostFormCitiesState.loadInProgress() = _LoadInProgress;
  const factory PostFormCitiesState.loadCitiesSuccess(
      KtList<LocationPrimitive> data) = _LoadCitiesSuccess;
  const factory PostFormCitiesState.loadCitiesFailure(PostFailure postFailure) =
      _LoadCitiesFailure;
}
