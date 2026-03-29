// GENERATED CODE - DO NOT MODIFY BY HAND

import 'images_image_variant_definition.dart';final class ImagesImageVariantResponse {const ImagesImageVariantResponse({this.variant});

factory ImagesImageVariantResponse.fromJson(Map<String, dynamic> json) { return ImagesImageVariantResponse(
  variant: json['variant'] != null ? ImagesImageVariantDefinition.fromJson(json['variant'] as Map<String, dynamic>) : null,
); }

final ImagesImageVariantDefinition? variant;

Map<String, dynamic> toJson() { return {
  if (variant != null) 'variant': variant?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'variant'}.contains(key)); } 
ImagesImageVariantResponse copyWith({ImagesImageVariantDefinition Function()? variant}) { return ImagesImageVariantResponse(
  variant: variant != null ? variant() : this.variant,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageVariantResponse &&
          variant == other.variant; } 
@override int get hashCode { return variant.hashCode; } 
@override String toString() { return 'ImagesImageVariantResponse(variant: $variant)'; } 
 }
