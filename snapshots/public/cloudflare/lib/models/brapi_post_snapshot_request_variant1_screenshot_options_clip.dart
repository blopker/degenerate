// GENERATED CODE - DO NOT MODIFY BY HAND

final class BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip {const BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip({required this.height, this.scale, required this.width, required this.x, required this.y, });

factory BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip(
  height: (json['height'] as num).toDouble(),
  scale: json['scale'] != null ? (json['scale'] as num).toDouble() : null,
  width: (json['width'] as num).toDouble(),
  x: (json['x'] as num).toDouble(),
  y: (json['y'] as num).toDouble(),
); }

final double height;

final double? scale;

final double width;

final double x;

final double y;

Map<String, dynamic> toJson() { return {
  'height': height,
  'scale': ?scale,
  'width': width,
  'x': x,
  'y': y,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('height') && json['height'] is num &&
      json.containsKey('width') && json['width'] is num &&
      json.containsKey('x') && json['x'] is num &&
      json.containsKey('y') && json['y'] is num; } 
BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip copyWith({double? height, double Function()? scale, double? width, double? x, double? y, }) { return BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip(
  height: height ?? this.height,
  scale: scale != null ? scale() : this.scale,
  width: width ?? this.width,
  x: x ?? this.x,
  y: y ?? this.y,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip &&
          height == other.height &&
          scale == other.scale &&
          width == other.width &&
          x == other.x &&
          y == other.y; } 
@override int get hashCode { return Object.hash(height, scale, width, x, y); } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip(height: $height, scale: $scale, width: $width, x: $x, y: $y)'; } 
 }
