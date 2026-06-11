// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Quality of screen share
@immutable final class PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality {const PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality._(this.value);

factory PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality._(json),
}; }

static const PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality hd = PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality._('hd');

static const PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality vga = PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality._('vga');

static const PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality qvga = PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality._('qvga');

static const List<PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality($value)'; } 
 }
/// Configuration options for participant screen shares
@immutable final class PatchPresetsPresetIdResponseDataConfigMediaScreenshare {const PatchPresetsPresetIdResponseDataConfigMediaScreenshare({required this.frameRate, required this.quality, });

factory PatchPresetsPresetIdResponseDataConfigMediaScreenshare.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataConfigMediaScreenshare(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of screen share
final int frameRate;

/// Quality of screen share
final PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
PatchPresetsPresetIdResponseDataConfigMediaScreenshare copyWith({int? frameRate, PatchPresetsPresetIdResponseDataConfigMediaScreenshareQuality? quality, }) { return PatchPresetsPresetIdResponseDataConfigMediaScreenshare(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataConfigMediaScreenshare &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfigMediaScreenshare(frameRate: $frameRate, quality: $quality)'; } 
 }
