// GENERATED CODE - DO NOT MODIFY BY HAND

/// Video quality of participants
final class RealtimekitPresetConfigMediaVideoQuality {const RealtimekitPresetConfigMediaVideoQuality._(this.value);

factory RealtimekitPresetConfigMediaVideoQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => RealtimekitPresetConfigMediaVideoQuality._(json),
}; }

static const RealtimekitPresetConfigMediaVideoQuality hd = RealtimekitPresetConfigMediaVideoQuality._('hd');

static const RealtimekitPresetConfigMediaVideoQuality vga = RealtimekitPresetConfigMediaVideoQuality._('vga');

static const RealtimekitPresetConfigMediaVideoQuality qvga = RealtimekitPresetConfigMediaVideoQuality._('qvga');

static const List<RealtimekitPresetConfigMediaVideoQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitPresetConfigMediaVideoQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitPresetConfigMediaVideoQuality($value)'; } 
 }
/// Configuration options for participant videos
final class RealtimekitPresetConfigMediaVideo {const RealtimekitPresetConfigMediaVideo({required this.frameRate, required this.quality, });

factory RealtimekitPresetConfigMediaVideo.fromJson(Map<String, dynamic> json) { return RealtimekitPresetConfigMediaVideo(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: RealtimekitPresetConfigMediaVideoQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of participants' video
final int frameRate;

/// Video quality of participants
final RealtimekitPresetConfigMediaVideoQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
RealtimekitPresetConfigMediaVideo copyWith({int? frameRate, RealtimekitPresetConfigMediaVideoQuality? quality, }) { return RealtimekitPresetConfigMediaVideo(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetConfigMediaVideo &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'RealtimekitPresetConfigMediaVideo(frameRate: $frameRate, quality: $quality)'; } 
 }
