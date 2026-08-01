// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UploadAvatarRequest {const UploadAvatarRequest({required this.image, this.caption = const Omittable.absent(), });

factory UploadAvatarRequest.fromJson(Map<String, dynamic> json) { return UploadAvatarRequest(
  image: base64Decode(json['image'] as String),
  caption: json.containsKey('caption') ? Omittable(json['caption'] as String?) : const Omittable.absent(),
); }

final Uint8List image;

final Omittable<String?> caption;

Map<String, dynamic> toJson() { return {
  'image': base64Encode(image),
  if (caption.isPresent) 'caption': caption.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('image'); } 
UploadAvatarRequest copyWith({Uint8List? image, Omittable<String?>? caption, }) { return UploadAvatarRequest(
  image: image ?? this.image,
  caption: caption ?? this.caption,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UploadAvatarRequest &&
          image == other.image &&
          caption == other.caption; } 
@override int get hashCode { return Object.hash(image, caption); } 
@override String toString() { return 'UploadAvatarRequest(image: $image, caption: $caption)'; } 
 }
