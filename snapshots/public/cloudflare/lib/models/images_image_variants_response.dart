// GENERATED CODE - DO NOT MODIFY BY HAND

import 'images_image_variant_public_request.dart';final class ImagesImageVariantsResponse {const ImagesImageVariantsResponse({this.variants});

factory ImagesImageVariantsResponse.fromJson(Map<String, dynamic> json) { return ImagesImageVariantsResponse(
  variants: json['variants'] != null ? ImagesImageVariantPublicRequest.fromJson(json['variants'] as Map<String, dynamic>) : null,
); }

final ImagesImageVariantPublicRequest? variants;

Map<String, dynamic> toJson() { return {
  if (variants != null) 'variants': variants?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ImagesImageVariantsResponse copyWith({ImagesImageVariantPublicRequest Function()? variants}) { return ImagesImageVariantsResponse(
  variants: variants != null ? variants() : this.variants,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageVariantsResponse &&
          variants == other.variants; } 
@override int get hashCode { return variants.hashCode; } 
@override String toString() { return 'ImagesImageVariantsResponse(variants: $variants)'; } 
 }
