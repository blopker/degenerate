// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Describe a container image
final class ContainerImage {const ContainerImage({this.names, this.sizeBytes, });

factory ContainerImage.fromJson(Map<String, dynamic> json) { return ContainerImage(
  names: (json['names'] as List<dynamic>?)?.map((e) => e as String).toList(),
  sizeBytes: json['sizeBytes'] != null ? (json['sizeBytes'] as num).toInt() : null,
); }

/// Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
final List<String>? names;

/// The size of the image in bytes.
final int? sizeBytes;

Map<String, dynamic> toJson() { return {
  'names': ?names,
  'sizeBytes': ?sizeBytes,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ContainerImage copyWith({List<String> Function()? names, int Function()? sizeBytes, }) { return ContainerImage(
  names: names != null ? names() : this.names,
  sizeBytes: sizeBytes != null ? sizeBytes() : this.sizeBytes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerImage &&
          listEquals(names, other.names) &&
          sizeBytes == other.sizeBytes; } 
@override int get hashCode { return Object.hash(Object.hashAll(names ?? const []), sizeBytes); } 
@override String toString() { return 'ContainerImage(names: $names, sizeBytes: $sizeBytes)'; } 
 }
