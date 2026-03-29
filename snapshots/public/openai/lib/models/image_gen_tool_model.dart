// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The image generation model to use. Default: `gpt-image-1`.
/// 
final class ImageGenToolModelVariant2 {const ImageGenToolModelVariant2._(this.value);

factory ImageGenToolModelVariant2.fromJson(String json) { return switch (json) {
  'gpt-image-1' => gptImage1,
  'gpt-image-1-mini' => gptImage1Mini,
  'gpt-image-1.5' => gptImage15,
  _ => ImageGenToolModelVariant2._(json),
}; }

static const ImageGenToolModelVariant2 gptImage1 = ImageGenToolModelVariant2._('gpt-image-1');

static const ImageGenToolModelVariant2 gptImage1Mini = ImageGenToolModelVariant2._('gpt-image-1-mini');

static const ImageGenToolModelVariant2 gptImage15 = ImageGenToolModelVariant2._('gpt-image-1.5');

static const List<ImageGenToolModelVariant2> values = [gptImage1, gptImage1Mini, gptImage15];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenToolModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageGenToolModelVariant2($value)'; } 
 }
typedef ImageGenToolModel = OneOf2<String,ImageGenToolModelVariant2>;