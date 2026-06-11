// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Quality of screen share
@immutable final class DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality {const DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality._(this.value);

factory DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality._(json),
}; }

static const DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality hd = DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality._('hd');

static const DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality vga = DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality._('vga');

static const DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality qvga = DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality._('qvga');

static const List<DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality($value)'; } 
 }
/// Configuration options for participant screen shares
@immutable final class DeletePresetsPresetIdResponseDataConfigMediaScreenshare {const DeletePresetsPresetIdResponseDataConfigMediaScreenshare({required this.frameRate, required this.quality, });

factory DeletePresetsPresetIdResponseDataConfigMediaScreenshare.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataConfigMediaScreenshare(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of screen share
final int frameRate;

/// Quality of screen share
final DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
DeletePresetsPresetIdResponseDataConfigMediaScreenshare copyWith({int? frameRate, DeletePresetsPresetIdResponseDataConfigMediaScreenshareQuality? quality, }) { return DeletePresetsPresetIdResponseDataConfigMediaScreenshare(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataConfigMediaScreenshare &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataConfigMediaScreenshare(frameRate: $frameRate, quality: $quality)'; } 
 }
