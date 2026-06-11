// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Video quality of participants
@immutable final class PatchPresetsPresetIdResponseDataConfigMediaVideoQuality {const PatchPresetsPresetIdResponseDataConfigMediaVideoQuality._(this.value);

factory PatchPresetsPresetIdResponseDataConfigMediaVideoQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => PatchPresetsPresetIdResponseDataConfigMediaVideoQuality._(json),
}; }

static const PatchPresetsPresetIdResponseDataConfigMediaVideoQuality hd = PatchPresetsPresetIdResponseDataConfigMediaVideoQuality._('hd');

static const PatchPresetsPresetIdResponseDataConfigMediaVideoQuality vga = PatchPresetsPresetIdResponseDataConfigMediaVideoQuality._('vga');

static const PatchPresetsPresetIdResponseDataConfigMediaVideoQuality qvga = PatchPresetsPresetIdResponseDataConfigMediaVideoQuality._('qvga');

static const List<PatchPresetsPresetIdResponseDataConfigMediaVideoQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataConfigMediaVideoQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfigMediaVideoQuality($value)'; } 
 }
/// Configuration options for participant videos
@immutable final class PatchPresetsPresetIdResponseDataConfigMediaVideo {const PatchPresetsPresetIdResponseDataConfigMediaVideo({required this.frameRate, required this.quality, });

factory PatchPresetsPresetIdResponseDataConfigMediaVideo.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataConfigMediaVideo(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: PatchPresetsPresetIdResponseDataConfigMediaVideoQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of participants' video
final int frameRate;

/// Video quality of participants
final PatchPresetsPresetIdResponseDataConfigMediaVideoQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
PatchPresetsPresetIdResponseDataConfigMediaVideo copyWith({int? frameRate, PatchPresetsPresetIdResponseDataConfigMediaVideoQuality? quality, }) { return PatchPresetsPresetIdResponseDataConfigMediaVideo(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataConfigMediaVideo &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfigMediaVideo(frameRate: $frameRate, quality: $quality)'; } 
 }
