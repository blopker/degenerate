// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Quality of screen share
@immutable final class GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality {const GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality._(this.value);

factory GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality._(json),
}; }

static const GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality hd = GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality._('hd');

static const GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality vga = GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality._('vga');

static const GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality qvga = GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality._('qvga');

static const List<GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality($value)'; } 
 }
/// Configuration options for participant screen shares
@immutable final class GetPresetsPresetIdResponseDataConfigMediaScreenshare {const GetPresetsPresetIdResponseDataConfigMediaScreenshare({required this.frameRate, required this.quality, });

factory GetPresetsPresetIdResponseDataConfigMediaScreenshare.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataConfigMediaScreenshare(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of screen share
final int frameRate;

/// Quality of screen share
final GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
GetPresetsPresetIdResponseDataConfigMediaScreenshare copyWith({int? frameRate, GetPresetsPresetIdResponseDataConfigMediaScreenshareQuality? quality, }) { return GetPresetsPresetIdResponseDataConfigMediaScreenshare(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataConfigMediaScreenshare &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfigMediaScreenshare(frameRate: $frameRate, quality: $quality)'; } 
 }
