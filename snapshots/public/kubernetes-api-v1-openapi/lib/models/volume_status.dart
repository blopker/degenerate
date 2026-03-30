// GENERATED CODE - DO NOT MODIFY BY HAND

import 'image_volume_status.dart';/// VolumeStatus represents the status of a mounted volume. At most one of its members must be specified.
final class VolumeStatus {const VolumeStatus({this.image});

factory VolumeStatus.fromJson(Map<String, dynamic> json) { return VolumeStatus(
  image: json['image'] != null ? ImageVolumeStatus.fromJson(json['image'] as Map<String, dynamic>) : null,
); }

/// image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine.
final ImageVolumeStatus? image;

Map<String, dynamic> toJson() { return {
  if (image != null) 'image': image?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'image'}.contains(key)); } 
VolumeStatus copyWith({ImageVolumeStatus Function()? image}) { return VolumeStatus(
  image: image != null ? image() : this.image,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VolumeStatus &&
          image == other.image; } 
@override int get hashCode { return image.hashCode; } 
@override String toString() { return 'VolumeStatus(image: $image)'; } 
 }
