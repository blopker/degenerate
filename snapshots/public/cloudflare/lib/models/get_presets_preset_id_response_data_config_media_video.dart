// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Video quality of participants
@immutable final class GetPresetsPresetIdResponseDataConfigMediaVideoQuality {const GetPresetsPresetIdResponseDataConfigMediaVideoQuality._(this.value);

factory GetPresetsPresetIdResponseDataConfigMediaVideoQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => GetPresetsPresetIdResponseDataConfigMediaVideoQuality._(json),
}; }

static const GetPresetsPresetIdResponseDataConfigMediaVideoQuality hd = GetPresetsPresetIdResponseDataConfigMediaVideoQuality._('hd');

static const GetPresetsPresetIdResponseDataConfigMediaVideoQuality vga = GetPresetsPresetIdResponseDataConfigMediaVideoQuality._('vga');

static const GetPresetsPresetIdResponseDataConfigMediaVideoQuality qvga = GetPresetsPresetIdResponseDataConfigMediaVideoQuality._('qvga');

static const List<GetPresetsPresetIdResponseDataConfigMediaVideoQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataConfigMediaVideoQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfigMediaVideoQuality($value)'; } 
 }
/// Configuration options for participant videos
@immutable final class GetPresetsPresetIdResponseDataConfigMediaVideo {const GetPresetsPresetIdResponseDataConfigMediaVideo({required this.frameRate, required this.quality, });

factory GetPresetsPresetIdResponseDataConfigMediaVideo.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataConfigMediaVideo(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: GetPresetsPresetIdResponseDataConfigMediaVideoQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of participants' video
final int frameRate;

/// Video quality of participants
final GetPresetsPresetIdResponseDataConfigMediaVideoQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
GetPresetsPresetIdResponseDataConfigMediaVideo copyWith({int? frameRate, GetPresetsPresetIdResponseDataConfigMediaVideoQuality? quality, }) { return GetPresetsPresetIdResponseDataConfigMediaVideo(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataConfigMediaVideo &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfigMediaVideo(frameRate: $frameRate, quality: $quality)'; } 
 }
