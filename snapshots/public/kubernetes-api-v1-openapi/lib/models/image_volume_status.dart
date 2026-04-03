// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ImageVolumeStatus represents the image-based volume status.
@immutable final class ImageVolumeStatus {const ImageVolumeStatus({required this.imageRef});

factory ImageVolumeStatus.fromJson(Map<String, dynamic> json) { return ImageVolumeStatus(
  imageRef: json['imageRef'] as String,
); }

/// ImageRef is the digest of the image used for this volume. It should have a value that's similar to the pod's status.containerStatuses`[i]`.imageID. The ImageRef length should not exceed 256 characters.
final String imageRef;

Map<String, dynamic> toJson() { return {
  'imageRef': imageRef,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('imageRef') && json['imageRef'] is String; } 
ImageVolumeStatus copyWith({String? imageRef}) { return ImageVolumeStatus(
  imageRef: imageRef ?? this.imageRef,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageVolumeStatus &&
          imageRef == other.imageRef; } 
@override int get hashCode { return imageRef.hashCode; } 
@override String toString() { return 'ImageVolumeStatus(imageRef: $imageRef)'; } 
 }
