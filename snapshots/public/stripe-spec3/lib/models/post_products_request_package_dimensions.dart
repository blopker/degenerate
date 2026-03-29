// GENERATED CODE - DO NOT MODIFY BY HAND

/// The dimensions of this product for shipping purposes.
final class PostProductsRequestPackageDimensions {const PostProductsRequestPackageDimensions({required this.height, required this.length, required this.weight, required this.width, });

factory PostProductsRequestPackageDimensions.fromJson(Map<String, dynamic> json) { return PostProductsRequestPackageDimensions(
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
PostProductsRequestPackageDimensions copyWith({double? height, double? length, double? weight, double? width, }) { return PostProductsRequestPackageDimensions(
  height: height ?? this.height,
  length: length ?? this.length,
  weight: weight ?? this.weight,
  width: width ?? this.width,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostProductsRequestPackageDimensions &&
          height == other.height &&
          length == other.length &&
          weight == other.weight &&
          width == other.width; } 
@override int get hashCode { return Object.hash(height, length, weight, width); } 
@override String toString() { return 'PostProductsRequestPackageDimensions(height: $height, length: $length, weight: $weight, width: $width)'; } 
 }
