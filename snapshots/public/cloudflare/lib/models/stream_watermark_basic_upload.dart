// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_name.dart';import 'stream_opacity.dart';import 'stream_padding.dart';import 'stream_position.dart';import 'stream_scale.dart';@immutable final class StreamWatermarkBasicUpload {const StreamWatermarkBasicUpload({required this.file, this.name, this.opacity, this.padding, this.position, this.scale, });

factory StreamWatermarkBasicUpload.fromJson(Map<String, dynamic> json) { return StreamWatermarkBasicUpload(
  file: json['file'] as String,
  name: json['name'] != null ? StreamName.fromJson(json['name'] as String) : null,
  opacity: json['opacity'] != null ? StreamOpacity.fromJson(json['opacity'] as num) : null,
  padding: json['padding'] != null ? StreamPadding.fromJson(json['padding'] as num) : null,
  position: json['position'] != null ? StreamPosition.fromJson(json['position'] as String) : null,
  scale: json['scale'] != null ? StreamScale.fromJson(json['scale'] as num) : null,
); }

/// The image file to upload.
final String file;

/// A short description of the watermark profile.
final StreamName? name;

/// The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
final StreamOpacity? opacity;

/// The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
final StreamPadding? padding;

/// The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
final StreamPosition? position;

/// The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0 `fills the entire video.
final StreamScale? scale;

Map<String, dynamic> toJson() { return {
  'file': file,
  if (name != null) 'name': name?.toJson(),
  if (opacity != null) 'opacity': opacity?.toJson(),
  if (padding != null) 'padding': padding?.toJson(),
  if (position != null) 'position': position?.toJson(),
  if (scale != null) 'scale': scale?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file') && json['file'] is String; } 
StreamWatermarkBasicUpload copyWith({String? file, StreamName Function()? name, StreamOpacity Function()? opacity, StreamPadding Function()? padding, StreamPosition Function()? position, StreamScale Function()? scale, }) { return StreamWatermarkBasicUpload(
  file: file ?? this.file,
  name: name != null ? name() : this.name,
  opacity: opacity != null ? opacity() : this.opacity,
  padding: padding != null ? padding() : this.padding,
  position: position != null ? position() : this.position,
  scale: scale != null ? scale() : this.scale,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamWatermarkBasicUpload &&
          file == other.file &&
          name == other.name &&
          opacity == other.opacity &&
          padding == other.padding &&
          position == other.position &&
          scale == other.scale; } 
@override int get hashCode { return Object.hash(file, name, opacity, padding, position, scale); } 
@override String toString() { return 'StreamWatermarkBasicUpload(file: $file, name: $name, opacity: $opacity, padding: $padding, position: $position, scale: $scale)'; } 
 }
