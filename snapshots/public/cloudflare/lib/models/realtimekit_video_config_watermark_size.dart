// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Size of the watermark
@immutable final class RealtimekitVideoConfigWatermarkSize {const RealtimekitVideoConfigWatermarkSize({this.height, this.width, });

factory RealtimekitVideoConfigWatermarkSize.fromJson(Map<String, dynamic> json) { return RealtimekitVideoConfigWatermarkSize(
  height: json['height'] != null ? (json['height'] as num).toInt() : null,
  width: json['width'] != null ? (json['width'] as num).toInt() : null,
); }

/// Height of the watermark in px
final int? height;

/// Width of the watermark in px
final int? width;

Map<String, dynamic> toJson() { return {
  'height': ?height,
  'width': ?width,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'height', 'width'}.contains(key)); } 
RealtimekitVideoConfigWatermarkSize copyWith({int Function()? height, int Function()? width, }) { return RealtimekitVideoConfigWatermarkSize(
  height: height != null ? height() : this.height,
  width: width != null ? width() : this.width,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitVideoConfigWatermarkSize &&
          height == other.height &&
          width == other.width; } 
@override int get hashCode { return Object.hash(height, width); } 
@override String toString() { return 'RealtimekitVideoConfigWatermarkSize(height: $height, width: $width)'; } 
 }
