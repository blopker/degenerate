// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ObjectDetectionVariant2 {const ObjectDetectionVariant2({this.image});

factory ObjectDetectionVariant2.fromJson(Map<String, dynamic> json) { return ObjectDetectionVariant2(
  image: (json['image'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
); }

/// An array of integers that represent the image data constrained to 8-bit unsigned integer values
final List<double>? image;

Map<String, dynamic> toJson() { return {
  'image': ?image,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'image'}.contains(key)); } 
ObjectDetectionVariant2 copyWith({List<double> Function()? image}) { return ObjectDetectionVariant2(
  image: image != null ? image() : this.image,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObjectDetectionVariant2 &&
          listEquals(image, other.image); } 
@override int get hashCode { return Object.hashAll(image ?? const []).hashCode; } 
@override String toString() { return 'ObjectDetectionVariant2(image: $image)'; } 
 }
