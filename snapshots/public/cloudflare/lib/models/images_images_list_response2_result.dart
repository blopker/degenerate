// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_image.dart';final class ImagesImagesListResponse2Result {const ImagesImagesListResponse2Result({this.images});

factory ImagesImagesListResponse2Result.fromJson(Map<String, dynamic> json) { return ImagesImagesListResponse2Result(
  images: (json['images'] as List<dynamic>?)?.map((e) => ImagesImage.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ImagesImage>? images;

Map<String, dynamic> toJson() { return {
  if (images != null) 'images': images?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'images'}.contains(key)); } 
ImagesImagesListResponse2Result copyWith({List<ImagesImage> Function()? images}) { return ImagesImagesListResponse2Result(
  images: images != null ? images() : this.images,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImagesListResponse2Result &&
          listEquals(images, other.images); } 
@override int get hashCode { return Object.hashAll(images ?? const []).hashCode; } 
@override String toString() { return 'ImagesImagesListResponse2Result(images: $images)'; } 
 }
