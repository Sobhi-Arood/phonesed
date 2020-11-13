part of 'post_form_brands_bloc.dart';

@freezed
abstract class PostFormBrandsEvent with _$PostFormBrandsEvent {
  const factory PostFormBrandsEvent.getBrandsStarted() = _GetBrandsStarted;
  const factory PostFormBrandsEvent.brandsReceived(
          Either<PostFailure, KtList<BrandPrimitive>> failureOrPosts) =
      _BrandsReceived;
}
