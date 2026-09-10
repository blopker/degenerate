// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'image_detail.dart';/// An image input to the model. Learn about [image inputs](/docs/guides/vision).
@immutable final class InputImageContent {const InputImageContent({required this.detail, this.type = 'input_image', this.imageUrl = const Omittable.absent(), this.fileId = const Omittable.absent(), });

factory InputImageContent.fromJson(Map<String, dynamic> json) { return InputImageContent(
  type: json['type'] as String,
  imageUrl: json.containsKey('image_url') ? Omittable(json['image_url'] as String?) : const Omittable.absent(),
  fileId: json.containsKey('file_id') ? Omittable(json['file_id'] as String?) : const Omittable.absent(),
  detail: ImageDetail.fromJson(json['detail'] as String),
); }

/// The type of the input item. Always `input_image`.
final String type;

/// The URL of the image to be sent to the model. A fully qualified URL or base64 encoded image in a data URL.
final Omittable<String?> imageUrl;

/// The ID of the file to be sent to the model.
final Omittable<String?> fileId;

/// The detail level of the image to be sent to the model. One of `high`, `low`, `auto`, or `original`. Defaults to `auto`.
final ImageDetail detail;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (imageUrl.isPresent) 'image_url': imageUrl.value,
  if (fileId.isPresent) 'file_id': fileId.value,
  'detail': detail.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('detail'); } 
InputImageContent copyWith({String? type, Omittable<String?>? imageUrl, Omittable<String?>? fileId, ImageDetail? detail, }) { return InputImageContent(
  type: type ?? this.type,
  imageUrl: imageUrl ?? this.imageUrl,
  fileId: fileId ?? this.fileId,
  detail: detail ?? this.detail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputImageContent &&
          type == other.type &&
          imageUrl == other.imageUrl &&
          fileId == other.fileId &&
          detail == other.detail; } 
@override int get hashCode { return Object.hash(type, imageUrl, fileId, detail); } 
@override String toString() { return 'InputImageContent(type: $type, imageUrl: $imageUrl, fileId: $fileId, detail: $detail)'; } 
 }
