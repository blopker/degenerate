// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DetailEnum {const DetailEnum._(this.value);

factory DetailEnum.fromJson(String json) { return switch (json) {
  'low' => low,
  'high' => high,
  'auto' => auto,
  'original' => original,
  _ => DetailEnum._(json),
}; }

static const DetailEnum low = DetailEnum._('low');

static const DetailEnum high = DetailEnum._('high');

static const DetailEnum auto = DetailEnum._('auto');

static const DetailEnum original = DetailEnum._('original');

static const List<DetailEnum> values = [low, high, auto, original];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DetailEnum && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DetailEnum($value)'; } 
 }
/// The type of the input item. Always `input_image`.
@immutable final class InputImageContentParamAutoParamType {const InputImageContentParamAutoParamType._(this.value);

factory InputImageContentParamAutoParamType.fromJson(String json) { return switch (json) {
  'input_image' => inputImage,
  _ => InputImageContentParamAutoParamType._(json),
}; }

static const InputImageContentParamAutoParamType inputImage = InputImageContentParamAutoParamType._('input_image');

static const List<InputImageContentParamAutoParamType> values = [inputImage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputImageContentParamAutoParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InputImageContentParamAutoParamType($value)'; } 
 }
/// An image input to the model. Learn about [image inputs](/docs/guides/vision)
@immutable final class InputImageContentParamAutoParam {const InputImageContentParamAutoParam({this.type = InputImageContentParamAutoParamType.inputImage, this.imageUrl = const Omittable.absent(), this.fileId = const Omittable.absent(), this.detail = const Omittable.absent(), });

factory InputImageContentParamAutoParam.fromJson(Map<String, dynamic> json) { return InputImageContentParamAutoParam(
  type: InputImageContentParamAutoParamType.fromJson(json['type'] as String),
  imageUrl: json.containsKey('image_url') ? Omittable(json['image_url'] as String?) : const Omittable.absent(),
  fileId: json.containsKey('file_id') ? Omittable(json['file_id'] as String?) : const Omittable.absent(),
  detail: json.containsKey('detail') ? Omittable(json['detail'] != null ? DetailEnum.fromJson(json['detail'] as String) : null) : const Omittable.absent(),
); }

/// The type of the input item. Always `input_image`.
final InputImageContentParamAutoParamType type;

/// The URL of the image to be sent to the model. A fully qualified URL or base64 encoded image in a data URL.
final Omittable<String?> imageUrl;

/// The ID of the file to be sent to the model.
final Omittable<String?> fileId;

final Omittable<DetailEnum?> detail;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (imageUrl.isPresent) 'image_url': imageUrl.value,
  if (fileId.isPresent) 'file_id': fileId.value,
  if (detail.isPresent) 'detail': detail.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
InputImageContentParamAutoParam copyWith({InputImageContentParamAutoParamType? type, Omittable<String?>? imageUrl, Omittable<String?>? fileId, Omittable<DetailEnum?>? detail, }) { return InputImageContentParamAutoParam(
  type: type ?? this.type,
  imageUrl: imageUrl ?? this.imageUrl,
  fileId: fileId ?? this.fileId,
  detail: detail ?? this.detail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputImageContentParamAutoParam &&
          type == other.type &&
          imageUrl == other.imageUrl &&
          fileId == other.fileId &&
          detail == other.detail; } 
@override int get hashCode { return Object.hash(type, imageUrl, fileId, detail); } 
@override String toString() { return 'InputImageContentParamAutoParam(type: $type, imageUrl: $imageUrl, fileId: $fileId, detail: $detail)'; } 
 }
