part of 'post_form_brands_bloc.dart';

@freezed
abstract class PostFormBrandsState with _$PostFormBrandsState {
  const factory PostFormBrandsState.initial() = _Initial;
  const factory PostFormBrandsState.loadInProgress() = _LoadInProgress;
  const factory PostFormBrandsState.loadBrandsSuccess(
      KtList<BrandPrimitive> data) = _LoadBrandsSuccess;
  const factory PostFormBrandsState.loadBrandsFailure(PostFailure postFailure) =
      _LoadBrandsFailure;
}
