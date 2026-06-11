// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Quality of screen share
@immutable final class PostPresetsResponseDataConfigMediaScreenshareQuality {const PostPresetsResponseDataConfigMediaScreenshareQuality._(this.value);

factory PostPresetsResponseDataConfigMediaScreenshareQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => PostPresetsResponseDataConfigMediaScreenshareQuality._(json),
}; }

static const PostPresetsResponseDataConfigMediaScreenshareQuality hd = PostPresetsResponseDataConfigMediaScreenshareQuality._('hd');

static const PostPresetsResponseDataConfigMediaScreenshareQuality vga = PostPresetsResponseDataConfigMediaScreenshareQuality._('vga');

static const PostPresetsResponseDataConfigMediaScreenshareQuality qvga = PostPresetsResponseDataConfigMediaScreenshareQuality._('qvga');

static const List<PostPresetsResponseDataConfigMediaScreenshareQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataConfigMediaScreenshareQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataConfigMediaScreenshareQuality($value)'; } 
 }
/// Configuration options for participant screen shares
@immutable final class PostPresetsResponseDataConfigMediaScreenshare {const PostPresetsResponseDataConfigMediaScreenshare({required this.frameRate, required this.quality, });

factory PostPresetsResponseDataConfigMediaScreenshare.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataConfigMediaScreenshare(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: PostPresetsResponseDataConfigMediaScreenshareQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of screen share
final int frameRate;

/// Quality of screen share
final PostPresetsResponseDataConfigMediaScreenshareQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
PostPresetsResponseDataConfigMediaScreenshare copyWith({int? frameRate, PostPresetsResponseDataConfigMediaScreenshareQuality? quality, }) { return PostPresetsResponseDataConfigMediaScreenshare(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataConfigMediaScreenshare &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'PostPresetsResponseDataConfigMediaScreenshare(frameRate: $frameRate, quality: $quality)'; } 
 }
