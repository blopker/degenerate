// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_video_config_watermark_size.dart';/// Position of the watermark
final class RealtimekitVideoConfigWatermarkPosition {const RealtimekitVideoConfigWatermarkPosition._(this.value);

factory RealtimekitVideoConfigWatermarkPosition.fromJson(String json) { return switch (json) {
  'left top' => leftTop,
  'right top' => rightTop,
  'left bottom' => leftBottom,
  'right bottom' => rightBottom,
  _ => RealtimekitVideoConfigWatermarkPosition._(json),
}; }

static const RealtimekitVideoConfigWatermarkPosition leftTop = RealtimekitVideoConfigWatermarkPosition._('left top');

static const RealtimekitVideoConfigWatermarkPosition rightTop = RealtimekitVideoConfigWatermarkPosition._('right top');

static const RealtimekitVideoConfigWatermarkPosition leftBottom = RealtimekitVideoConfigWatermarkPosition._('left bottom');

static const RealtimekitVideoConfigWatermarkPosition rightBottom = RealtimekitVideoConfigWatermarkPosition._('right bottom');

static const List<RealtimekitVideoConfigWatermarkPosition> values = [leftTop, rightTop, leftBottom, rightBottom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitVideoConfigWatermarkPosition && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitVideoConfigWatermarkPosition($value)'; } 
 }
/// Watermark to be added to the recording
final class RealtimekitVideoConfigWatermark {const RealtimekitVideoConfigWatermark({this.position = RealtimekitVideoConfigWatermarkPosition.leftTop, this.size, this.url, });

factory RealtimekitVideoConfigWatermark.fromJson(Map<String, dynamic> json) { return RealtimekitVideoConfigWatermark(
  position: json.containsKey('position') ? RealtimekitVideoConfigWatermarkPosition.fromJson(json['position'] as String) : RealtimekitVideoConfigWatermarkPosition.leftTop,
  size: json['size'] != null ? RealtimekitVideoConfigWatermarkSize.fromJson(json['size'] as Map<String, dynamic>) : null,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
); }

/// Position of the watermark
final RealtimekitVideoConfigWatermarkPosition position;

/// Size of the watermark
final RealtimekitVideoConfigWatermarkSize? size;

/// URL of the watermark image
final Uri? url;

Map<String, dynamic> toJson() { return {
  'position': position.toJson(),
  if (size != null) 'size': size?.toJson(),
  if (url != null) 'url': url?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'position', 'size', 'url'}.contains(key)); } 
RealtimekitVideoConfigWatermark copyWith({RealtimekitVideoConfigWatermarkPosition Function()? position, RealtimekitVideoConfigWatermarkSize Function()? size, Uri Function()? url, }) { return RealtimekitVideoConfigWatermark(
  position: position != null ? position() : this.position,
  size: size != null ? size() : this.size,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitVideoConfigWatermark &&
          position == other.position &&
          size == other.size &&
          url == other.url; } 
@override int get hashCode { return Object.hash(position, size, url); } 
@override String toString() { return 'RealtimekitVideoConfigWatermark(position: $position, size: $size, url: $url)'; } 
 }
