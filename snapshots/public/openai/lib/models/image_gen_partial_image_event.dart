// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `image_generation.partial_image`.
/// 
@immutable final class ImageGenPartialImageEventType {const ImageGenPartialImageEventType._(this.value);

factory ImageGenPartialImageEventType.fromJson(String json) { return switch (json) {
  'image_generation.partial_image' => imageGenerationPartialImage,
  _ => ImageGenPartialImageEventType._(json),
}; }

static const ImageGenPartialImageEventType imageGenerationPartialImage = ImageGenPartialImageEventType._('image_generation.partial_image');

static const List<ImageGenPartialImageEventType> values = [imageGenerationPartialImage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenPartialImageEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageGenPartialImageEventType($value)'; } 
 }
/// The size of the requested image.
/// 
@immutable final class ImageGenPartialImageEventSize {const ImageGenPartialImageEventSize._(this.value);

factory ImageGenPartialImageEventSize.fromJson(String json) { return switch (json) {
  '1024x1024' => $1024x1024,
  '1024x1536' => $1024x1536,
  '1536x1024' => $1536x1024,
  'auto' => auto,
  _ => ImageGenPartialImageEventSize._(json),
}; }

static const ImageGenPartialImageEventSize $1024x1024 = ImageGenPartialImageEventSize._('1024x1024');

static const ImageGenPartialImageEventSize $1024x1536 = ImageGenPartialImageEventSize._('1024x1536');

static const ImageGenPartialImageEventSize $1536x1024 = ImageGenPartialImageEventSize._('1536x1024');

static const ImageGenPartialImageEventSize auto = ImageGenPartialImageEventSize._('auto');

static const List<ImageGenPartialImageEventSize> values = [$1024x1024, $1024x1536, $1536x1024, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenPartialImageEventSize && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageGenPartialImageEventSize($value)'; } 
 }
/// The quality setting for the requested image.
/// 
@immutable final class ImageGenPartialImageEventQuality {const ImageGenPartialImageEventQuality._(this.value);

factory ImageGenPartialImageEventQuality.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  'auto' => auto,
  _ => ImageGenPartialImageEventQuality._(json),
}; }

static const ImageGenPartialImageEventQuality low = ImageGenPartialImageEventQuality._('low');

static const ImageGenPartialImageEventQuality medium = ImageGenPartialImageEventQuality._('medium');

static const ImageGenPartialImageEventQuality high = ImageGenPartialImageEventQuality._('high');

static const ImageGenPartialImageEventQuality auto = ImageGenPartialImageEventQuality._('auto');

static const List<ImageGenPartialImageEventQuality> values = [low, medium, high, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenPartialImageEventQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageGenPartialImageEventQuality($value)'; } 
 }
/// The background setting for the requested image.
/// 
@immutable final class ImageGenPartialImageEventBackground {const ImageGenPartialImageEventBackground._(this.value);

factory ImageGenPartialImageEventBackground.fromJson(String json) { return switch (json) {
  'transparent' => transparent,
  'opaque' => opaque,
  'auto' => auto,
  _ => ImageGenPartialImageEventBackground._(json),
}; }

static const ImageGenPartialImageEventBackground transparent = ImageGenPartialImageEventBackground._('transparent');

static const ImageGenPartialImageEventBackground opaque = ImageGenPartialImageEventBackground._('opaque');

static const ImageGenPartialImageEventBackground auto = ImageGenPartialImageEventBackground._('auto');

static const List<ImageGenPartialImageEventBackground> values = [transparent, opaque, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenPartialImageEventBackground && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageGenPartialImageEventBackground($value)'; } 
 }
/// The output format for the requested image.
/// 
@immutable final class ImageGenPartialImageEventOutputFormat {const ImageGenPartialImageEventOutputFormat._(this.value);

factory ImageGenPartialImageEventOutputFormat.fromJson(String json) { return switch (json) {
  'png' => png,
  'webp' => webp,
  'jpeg' => jpeg,
  _ => ImageGenPartialImageEventOutputFormat._(json),
}; }

static const ImageGenPartialImageEventOutputFormat png = ImageGenPartialImageEventOutputFormat._('png');

static const ImageGenPartialImageEventOutputFormat webp = ImageGenPartialImageEventOutputFormat._('webp');

static const ImageGenPartialImageEventOutputFormat jpeg = ImageGenPartialImageEventOutputFormat._('jpeg');

static const List<ImageGenPartialImageEventOutputFormat> values = [png, webp, jpeg];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageGenPartialImageEventOutputFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageGenPartialImageEventOutputFormat($value)'; } 
 }
/// Emitted when a partial image is available during image generation streaming.
/// 
@immutable final class ImageGenPartialImageEvent {const ImageGenPartialImageEvent({required this.type, required this.b64Json, required this.createdAt, required this.size, required this.quality, required this.background, required this.outputFormat, required this.partialImageIndex, });

factory ImageGenPartialImageEvent.fromJson(Map<String, dynamic> json) { return ImageGenPartialImageEvent(
  type: ImageGenPartialImageEventType.fromJson(json['type'] as String),
  b64Json: json['b64_json'] as String,
  createdAt: (json['created_at'] as num).toInt(),
  size: ImageGenPartialImageEventSize.fromJson(json['size'] as String),
  quality: ImageGenPartialImageEventQuality.fromJson(json['quality'] as String),
  background: ImageGenPartialImageEventBackground.fromJson(json['background'] as String),
  outputFormat: ImageGenPartialImageEventOutputFormat.fromJson(json['output_format'] as String),
  partialImageIndex: (json['partial_image_index'] as num).toInt(),
); }

/// The type of the event. Always `image_generation.partial_image`.
/// 
final ImageGenPartialImageEventType type;

/// Base64-encoded partial image data, suitable for rendering as an image.
/// 
final String b64Json;

/// The Unix timestamp when the event was created.
/// 
final int createdAt;

/// The size of the requested image.
/// 
final ImageGenPartialImageEventSize size;

/// The quality setting for the requested image.
/// 
final ImageGenPartialImageEventQuality quality;

/// The background setting for the requested image.
/// 
final ImageGenPartialImageEventBackground background;

/// The output format for the requested image.
/// 
final ImageGenPartialImageEventOutputFormat outputFormat;

/// 0-based index for the partial image (streaming).
/// 
final int partialImageIndex;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'b64_json': b64Json,
  'created_at': createdAt,
  'size': size.toJson(),
  'quality': quality.toJson(),
  'background': background.toJson(),
  'output_format': outputFormat.toJson(),
  'partial_image_index': partialImageIndex,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('b64_json') && json['b64_json'] is String &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('size') &&
      json.containsKey('quality') &&
      json.containsKey('background') &&
      json.containsKey('output_format') &&
      json.containsKey('partial_image_index') && json['partial_image_index'] is num; } 
ImageGenPartialImageEvent copyWith({ImageGenPartialImageEventType? type, String? b64Json, int? createdAt, ImageGenPartialImageEventSize? size, ImageGenPartialImageEventQuality? quality, ImageGenPartialImageEventBackground? background, ImageGenPartialImageEventOutputFormat? outputFormat, int? partialImageIndex, }) { return ImageGenPartialImageEvent(
  type: type ?? this.type,
  b64Json: b64Json ?? this.b64Json,
  createdAt: createdAt ?? this.createdAt,
  size: size ?? this.size,
  quality: quality ?? this.quality,
  background: background ?? this.background,
  outputFormat: outputFormat ?? this.outputFormat,
  partialImageIndex: partialImageIndex ?? this.partialImageIndex,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageGenPartialImageEvent &&
          type == other.type &&
          b64Json == other.b64Json &&
          createdAt == other.createdAt &&
          size == other.size &&
          quality == other.quality &&
          background == other.background &&
          outputFormat == other.outputFormat &&
          partialImageIndex == other.partialImageIndex; } 
@override int get hashCode { return Object.hash(type, b64Json, createdAt, size, quality, background, outputFormat, partialImageIndex); } 
@override String toString() { return 'ImageGenPartialImageEvent(type: $type, b64Json: $b64Json, createdAt: $createdAt, size: $size, quality: $quality, background: $background, outputFormat: $outputFormat, partialImageIndex: $partialImageIndex)'; } 
 }
