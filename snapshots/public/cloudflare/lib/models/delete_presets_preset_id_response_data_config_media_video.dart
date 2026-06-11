// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Video quality of participants
@immutable final class DeletePresetsPresetIdResponseDataConfigMediaVideoQuality {const DeletePresetsPresetIdResponseDataConfigMediaVideoQuality._(this.value);

factory DeletePresetsPresetIdResponseDataConfigMediaVideoQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => DeletePresetsPresetIdResponseDataConfigMediaVideoQuality._(json),
}; }

static const DeletePresetsPresetIdResponseDataConfigMediaVideoQuality hd = DeletePresetsPresetIdResponseDataConfigMediaVideoQuality._('hd');

static const DeletePresetsPresetIdResponseDataConfigMediaVideoQuality vga = DeletePresetsPresetIdResponseDataConfigMediaVideoQuality._('vga');

static const DeletePresetsPresetIdResponseDataConfigMediaVideoQuality qvga = DeletePresetsPresetIdResponseDataConfigMediaVideoQuality._('qvga');

static const List<DeletePresetsPresetIdResponseDataConfigMediaVideoQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataConfigMediaVideoQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataConfigMediaVideoQuality($value)'; } 
 }
/// Configuration options for participant videos
@immutable final class DeletePresetsPresetIdResponseDataConfigMediaVideo {const DeletePresetsPresetIdResponseDataConfigMediaVideo({required this.frameRate, required this.quality, });

factory DeletePresetsPresetIdResponseDataConfigMediaVideo.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataConfigMediaVideo(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: DeletePresetsPresetIdResponseDataConfigMediaVideoQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of participants' video
final int frameRate;

/// Video quality of participants
final DeletePresetsPresetIdResponseDataConfigMediaVideoQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
DeletePresetsPresetIdResponseDataConfigMediaVideo copyWith({int? frameRate, DeletePresetsPresetIdResponseDataConfigMediaVideoQuality? quality, }) { return DeletePresetsPresetIdResponseDataConfigMediaVideo(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataConfigMediaVideo &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataConfigMediaVideo(frameRate: $frameRate, quality: $quality)'; } 
 }
