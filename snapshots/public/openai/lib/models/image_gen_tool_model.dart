// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The image generation model to use. Default: `gpt-image-1`.
/// 
@immutable final class ImageGenToolModelVariant2 {const ImageGenToolModelVariant2._(this.value);

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

@immutable
final class ImageGenToolModel {
  const ImageGenToolModel({this.string = const Omittable.absent(),
this.imageGenToolModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ImageGenToolModel._({required this.rawValue, required this.string,
required this.imageGenToolModelVariant2,});
  factory ImageGenToolModel.fromJson(Object? json) => ImageGenToolModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
imageGenToolModelVariant2: parseAnyOfVariant<ImageGenToolModelVariant2>(json, (value) => ImageGenToolModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<ImageGenToolModelVariant2> imageGenToolModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || imageGenToolModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (imageGenToolModelVariant2.isPresent) imageGenToolModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ImageGenToolModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ImageGenToolModel(${toJson()})';
}
