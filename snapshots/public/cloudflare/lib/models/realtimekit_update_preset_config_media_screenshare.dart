// GENERATED CODE - DO NOT MODIFY BY HAND

/// Quality of screen share
final class RealtimekitUpdatePresetConfigMediaScreenshareQuality {const RealtimekitUpdatePresetConfigMediaScreenshareQuality._(this.value);

factory RealtimekitUpdatePresetConfigMediaScreenshareQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => RealtimekitUpdatePresetConfigMediaScreenshareQuality._(json),
}; }

static const RealtimekitUpdatePresetConfigMediaScreenshareQuality hd = RealtimekitUpdatePresetConfigMediaScreenshareQuality._('hd');

static const RealtimekitUpdatePresetConfigMediaScreenshareQuality vga = RealtimekitUpdatePresetConfigMediaScreenshareQuality._('vga');

static const RealtimekitUpdatePresetConfigMediaScreenshareQuality qvga = RealtimekitUpdatePresetConfigMediaScreenshareQuality._('qvga');

static const List<RealtimekitUpdatePresetConfigMediaScreenshareQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetConfigMediaScreenshareQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetConfigMediaScreenshareQuality($value)'; } 
 }
/// Configuration options for participant screen shares
final class RealtimekitUpdatePresetConfigMediaScreenshare {const RealtimekitUpdatePresetConfigMediaScreenshare({this.frameRate, this.quality, });

factory RealtimekitUpdatePresetConfigMediaScreenshare.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetConfigMediaScreenshare(
  frameRate: json['frame_rate'] != null ? (json['frame_rate'] as num).toInt() : null,
  quality: json['quality'] != null ? RealtimekitUpdatePresetConfigMediaScreenshareQuality.fromJson(json['quality'] as String) : null,
); }

/// Frame rate of screen share
final int? frameRate;

/// Quality of screen share
final RealtimekitUpdatePresetConfigMediaScreenshareQuality? quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': ?frameRate,
  if (quality != null) 'quality': quality?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitUpdatePresetConfigMediaScreenshare copyWith({int Function()? frameRate, RealtimekitUpdatePresetConfigMediaScreenshareQuality Function()? quality, }) { return RealtimekitUpdatePresetConfigMediaScreenshare(
  frameRate: frameRate != null ? frameRate() : this.frameRate,
  quality: quality != null ? quality() : this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetConfigMediaScreenshare &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'RealtimekitUpdatePresetConfigMediaScreenshare(frameRate: $frameRate, quality: $quality)'; } 
 }
