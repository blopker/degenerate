// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PackageDimensionsSpecs {const PackageDimensionsSpecs({required this.height, required this.length, required this.weight, required this.width, });

factory PackageDimensionsSpecs.fromJson(Map<String, dynamic> json) { return PackageDimensionsSpecs(
  height: (json['height'] as num).toDouble(),
  length: (json['length'] as num).toDouble(),
  weight: (json['weight'] as num).toDouble(),
  width: (json['width'] as num).toDouble(),
); }

final double height;

final double length;

final double weight;

final double width;

Map<String, dynamic> toJson() { return {
  'height': height,
  'length': length,
  'weight': weight,
  'width': width,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('height') && json['height'] is num &&
      json.containsKey('length') && json['length'] is num &&
      json.containsKey('weight') && json['weight'] is num &&
      json.containsKey('width') && json['width'] is num; } 
PackageDimensionsSpecs copyWith({double? height, double? length, double? weight, double? width, }) { return PackageDimensionsSpecs(
  height: height ?? this.height,
  length: length ?? this.length,
  weight: weight ?? this.weight,
  width: width ?? this.width,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PackageDimensionsSpecs &&
          height == other.height &&
          length == other.length &&
          weight == other.weight &&
          width == other.width; } 
@override int get hashCode { return Object.hash(height, length, weight, width); } 
@override String toString() { return 'PackageDimensionsSpecs(height: $height, length: $length, weight: $weight, width: $width)'; } 
 }
