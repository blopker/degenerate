// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_video_config_watermark.dart';/// Codec using which the recording will be encoded.
@immutable final class RealtimekitVideoConfigCodec {const RealtimekitVideoConfigCodec._(this.value);

factory RealtimekitVideoConfigCodec.fromJson(String json) {return switch (json) {
  'H264' => h264,
  'VP8' => vp8,
  _ => RealtimekitVideoConfigCodec._(json),
};}

static const RealtimekitVideoConfigCodec h264 = RealtimekitVideoConfigCodec._('H264');

static const RealtimekitVideoConfigCodec vp8 = RealtimekitVideoConfigCodec._('VP8');

static const List<RealtimekitVideoConfigCodec> values = [h264, vp8];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RealtimekitVideoConfigCodec && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'RealtimekitVideoConfigCodec($value)';}
}
@immutable final class RealtimekitVideoConfig {const RealtimekitVideoConfig({this.codec, this.exportFile, this.height, this.watermark, this.width, });

factory RealtimekitVideoConfig.fromJson(Map<String, dynamic> json) {return RealtimekitVideoConfig(
  codec: json['codec'] != null ? RealtimekitVideoConfigCodec.fromJson(json['codec'] as String) : null,
  exportFile: json['export_file'] as bool?,
  height: json['height'] != null ? (json['height'] as num).toInt() : null,
  watermark: json['watermark'] != null ? RealtimekitVideoConfigWatermark.fromJson(json['watermark'] as Map<String, dynamic>) : null,
  width: json['width'] != null ? (json['width'] as num).toInt() : null,
);}

/// Codec using which the recording will be encoded.
final RealtimekitVideoConfigCodec? codec;

/// Controls whether to export video file seperately
final bool? exportFile;

/// Height of the recording video in pixels
final int? height;

/// Watermark to be added to the recording
final RealtimekitVideoConfigWatermark? watermark;

/// Width of the recording video in pixels
final int? width;

/// The value with the schema default applied when absent.
RealtimekitVideoConfigCodec get codecOrDefault {return codec ?? RealtimekitVideoConfigCodec.fromJson('H264');}
/// The value with the schema default applied when absent.
bool get exportFileOrDefault {return exportFile ?? true;}
/// The value with the schema default applied when absent.
int get heightOrDefault {return height ?? 720;}
/// The value with the schema default applied when absent.
int get widthOrDefault {return width ?? 1280;}
Map<String, dynamic> toJson() {return {
  if (codec != null) 'codec': codec?.toJson(),
  'export_file': ?exportFile,
  'height': ?height,
  if (watermark != null) 'watermark': watermark?.toJson(),
  'width': ?width,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'codec', 'export_file', 'height', 'watermark', 'width'}.contains(key));}
RealtimekitVideoConfig copyWith({RealtimekitVideoConfigCodec? Function()? codec, bool? Function()? exportFile, int? Function()? height, RealtimekitVideoConfigWatermark? Function()? watermark, int? Function()? width, }) {return RealtimekitVideoConfig(
  codec: codec != null ? codec() : this.codec,
  exportFile: exportFile != null ? exportFile() : this.exportFile,
  height: height != null ? height() : this.height,
  watermark: watermark != null ? watermark() : this.watermark,
  width: width != null ? width() : this.width,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RealtimekitVideoConfig &&
          codec == other.codec &&
          exportFile == other.exportFile &&
          height == other.height &&
          watermark == other.watermark &&
          width == other.width;}
@override int get hashCode {return Object.hash(codec, exportFile, height, watermark, width);}
@override String toString() {return 'RealtimekitVideoConfig(codec: $codec, exportFile: $exportFile, height: $height, watermark: $watermark, width: $width)';}
}
