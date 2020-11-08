part of 'post_form_areas_bloc.dart';

@freezed
abstract class PostFormAreasState with _$PostFormAreasState {
  const factory PostFormAreasState.initial() = _Initial;
  const factory PostFormAreasState.loadInProgress() = _LoadInProgress;
  const factory PostFormAreasState.loadAreasSuccess(KtList<String> data) =
      _LoadAreasSuccess;
  const factory PostFormAreasState.loadAreasFailure(PostFailure postFailure) =
      _LoadAreasFailure;
}
