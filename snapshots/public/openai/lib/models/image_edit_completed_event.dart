// GENERATED CODE - DO NOT MODIFY BY HAND

import 'images_usage.dart';/// The type of the event. Always `image_edit.completed`.
/// 
final class ImageEditCompletedEventType {const ImageEditCompletedEventType._(this.value);

factory ImageEditCompletedEventType.fromJson(String json) { return switch (json) {
  'image_edit.completed' => imageEditCompleted,
  _ => ImageEditCompletedEventType._(json),
}; }

static const ImageEditCompletedEventType imageEditCompleted = ImageEditCompletedEventType._('image_edit.completed');

static const List<ImageEditCompletedEventType> values = [imageEditCompleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditCompletedEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageEditCompletedEventType($value)'; } 
 }
/// The size of the edited image.
/// 
final class ImageEditCompletedEventSize {const ImageEditCompletedEventSize._(this.value);

factory ImageEditCompletedEventSize.fromJson(String json) { return switch (json) {
  '1024x1024' => $1024x1024,
  '1024x1536' => $1024x1536,
  '1536x1024' => $1536x1024,
  'auto' => auto,
  _ => ImageEditCompletedEventSize._(json),
}; }

static const ImageEditCompletedEventSize $1024x1024 = ImageEditCompletedEventSize._('1024x1024');

static const ImageEditCompletedEventSize $1024x1536 = ImageEditCompletedEventSize._('1024x1536');

static const ImageEditCompletedEventSize $1536x1024 = ImageEditCompletedEventSize._('1536x1024');

static const ImageEditCompletedEventSize auto = ImageEditCompletedEventSize._('auto');

static const List<ImageEditCompletedEventSize> values = [$1024x1024, $1024x1536, $1536x1024, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditCompletedEventSize && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageEditCompletedEventSize($value)'; } 
 }
/// The quality setting for the edited image.
/// 
final class ImageEditCompletedEventQuality {const ImageEditCompletedEventQuality._(this.value);

factory ImageEditCompletedEventQuality.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  'auto' => auto,
  _ => ImageEditCompletedEventQuality._(json),
}; }

static const ImageEditCompletedEventQuality low = ImageEditCompletedEventQuality._('low');

static const ImageEditCompletedEventQuality medium = ImageEditCompletedEventQuality._('medium');

static const ImageEditCompletedEventQuality high = ImageEditCompletedEventQuality._('high');

static const ImageEditCompletedEventQuality auto = ImageEditCompletedEventQuality._('auto');

static const List<ImageEditCompletedEventQuality> values = [low, medium, high, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditCompletedEventQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageEditCompletedEventQuality($value)'; } 
 }
/// The background setting for the edited image.
/// 
final class ImageEditCompletedEventBackground {const ImageEditCompletedEventBackground._(this.value);

factory ImageEditCompletedEventBackground.fromJson(String json) { return switch (json) {
  'transparent' => transparent,
  'opaque' => opaque,
  'auto' => auto,
  _ => ImageEditCompletedEventBackground._(json),
}; }

static const ImageEditCompletedEventBackground transparent = ImageEditCompletedEventBackground._('transparent');

static const ImageEditCompletedEventBackground opaque = ImageEditCompletedEventBackground._('opaque');

static const ImageEditCompletedEventBackground auto = ImageEditCompletedEventBackground._('auto');

static const List<ImageEditCompletedEventBackground> values = [transparent, opaque, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditCompletedEventBackground && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageEditCompletedEventBackground($value)'; } 
 }
/// The output format for the edited image.
/// 
final class ImageEditCompletedEventOutputFormat {const ImageEditCompletedEventOutputFormat._(this.value);

factory ImageEditCompletedEventOutputFormat.fromJson(String json) { return switch (json) {
  'png' => png,
  'webp' => webp,
  'jpeg' => jpeg,
  _ => ImageEditCompletedEventOutputFormat._(json),
}; }

static const ImageEditCompletedEventOutputFormat png = ImageEditCompletedEventOutputFormat._('png');

static const ImageEditCompletedEventOutputFormat webp = ImageEditCompletedEventOutputFormat._('webp');

static const ImageEditCompletedEventOutputFormat jpeg = ImageEditCompletedEventOutputFormat._('jpeg');

static const List<ImageEditCompletedEventOutputFormat> values = [png, webp, jpeg];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageEditCompletedEventOutputFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageEditCompletedEventOutputFormat($value)'; } 
 }
/// Emitted when image editing has completed and the final image is available.
/// 
final class ImageEditCompletedEvent {const ImageEditCompletedEvent({required this.type, required this.b64Json, required this.createdAt, required this.size, required this.quality, required this.background, required this.outputFormat, required this.usage, });

factory ImageEditCompletedEvent.fromJson(Map<String, dynamic> json) { return ImageEditCompletedEvent(
  type: ImageEditCompletedEventType.fromJson(json['type'] as String),
  b64Json: json['b64_json'] as String,
  createdAt: (json['created_at'] as num).toInt(),
  size: ImageEditCompletedEventSize.fromJson(json['size'] as String),
  quality: ImageEditCompletedEventQuality.fromJson(json['quality'] as String),
  background: ImageEditCompletedEventBackground.fromJson(json['background'] as String),
  outputFormat: ImageEditCompletedEventOutputFormat.fromJson(json['output_format'] as String),
  usage: ImagesUsage.fromJson(json['usage'] as Map<String, dynamic>),
); }

/// The type of the event. Always `image_edit.completed`.
/// 
final ImageEditCompletedEventType type;

/// Base64-encoded final edited image data, suitable for rendering as an image.
/// 
final String b64Json;

/// The Unix timestamp when the event was created.
/// 
final int createdAt;

/// The size of the edited image.
/// 
final ImageEditCompletedEventSize size;

/// The quality setting for the edited image.
/// 
final ImageEditCompletedEventQuality quality;

/// The background setting for the edited image.
/// 
final ImageEditCompletedEventBackground background;

/// The output format for the edited image.
/// 
final ImageEditCompletedEventOutputFormat outputFormat;

final ImagesUsage usage;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'b64_json': b64Json,
  'created_at': createdAt,
  'size': size.toJson(),
  'quality': quality.toJson(),
  'background': background.toJson(),
  'output_format': outputFormat.toJson(),
  'usage': usage.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('b64_json') && json['b64_json'] is String &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('size') &&
      json.containsKey('quality') &&
      json.containsKey('background') &&
      json.containsKey('output_format') &&
      json.containsKey('usage'); } 
ImageEditCompletedEvent copyWith({ImageEditCompletedEventType? type, String? b64Json, int? createdAt, ImageEditCompletedEventSize? size, ImageEditCompletedEventQuality? quality, ImageEditCompletedEventBackground? background, ImageEditCompletedEventOutputFormat? outputFormat, ImagesUsage? usage, }) { return ImageEditCompletedEvent(
  type: type ?? this.type,
  b64Json: b64Json ?? this.b64Json,
  createdAt: createdAt ?? this.createdAt,
  size: size ?? this.size,
  quality: quality ?? this.quality,
  background: background ?? this.background,
  outputFormat: outputFormat ?? this.outputFormat,
  usage: usage ?? this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageEditCompletedEvent &&
          type == other.type &&
          b64Json == other.b64Json &&
          createdAt == other.createdAt &&
          size == other.size &&
          quality == other.quality &&
          background == other.background &&
          outputFormat == other.outputFormat &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(type, b64Json, createdAt, size, quality, background, outputFormat, usage); } 
@override String toString() { return 'ImageEditCompletedEvent(type: $type, b64Json: $b64Json, createdAt: $createdAt, size: $size, quality: $quality, background: $background, outputFormat: $outputFormat, usage: $usage)'; } 
 }
