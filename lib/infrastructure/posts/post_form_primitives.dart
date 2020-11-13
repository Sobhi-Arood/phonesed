import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_form_primitives.freezed.dart';

@freezed
abstract class BrandPrimitive with _$BrandPrimitive {
  const factory BrandPrimitive({
    @required String brandName,
    @required String brandImgUrl,
  }) = _BrandPrimitive;
}
