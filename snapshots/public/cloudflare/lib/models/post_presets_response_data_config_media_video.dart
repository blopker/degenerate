// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Video quality of participants
@immutable final class PostPresetsResponseDataConfigMediaVideoQuality {const PostPresetsResponseDataConfigMediaVideoQuality._(this.value);

factory PostPresetsResponseDataConfigMediaVideoQuality.fromJson(String json) { return switch (json) {
  'hd' => hd,
  'vga' => vga,
  'qvga' => qvga,
  _ => PostPresetsResponseDataConfigMediaVideoQuality._(json),
}; }

static const PostPresetsResponseDataConfigMediaVideoQuality hd = PostPresetsResponseDataConfigMediaVideoQuality._('hd');

static const PostPresetsResponseDataConfigMediaVideoQuality vga = PostPresetsResponseDataConfigMediaVideoQuality._('vga');

static const PostPresetsResponseDataConfigMediaVideoQuality qvga = PostPresetsResponseDataConfigMediaVideoQuality._('qvga');

static const List<PostPresetsResponseDataConfigMediaVideoQuality> values = [hd, vga, qvga];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataConfigMediaVideoQuality && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataConfigMediaVideoQuality($value)'; } 
 }
/// Configuration options for participant videos
@immutable final class PostPresetsResponseDataConfigMediaVideo {const PostPresetsResponseDataConfigMediaVideo({required this.frameRate, required this.quality, });

factory PostPresetsResponseDataConfigMediaVideo.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataConfigMediaVideo(
  frameRate: (json['frame_rate'] as num).toInt(),
  quality: PostPresetsResponseDataConfigMediaVideoQuality.fromJson(json['quality'] as String),
); }

/// Frame rate of participants' video
final int frameRate;

/// Video quality of participants
final PostPresetsResponseDataConfigMediaVideoQuality quality;

Map<String, dynamic> toJson() { return {
  'frame_rate': frameRate,
  'quality': quality.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('frame_rate') && json['frame_rate'] is num &&
      json.containsKey('quality'); } 
PostPresetsResponseDataConfigMediaVideo copyWith({int? frameRate, PostPresetsResponseDataConfigMediaVideoQuality? quality, }) { return PostPresetsResponseDataConfigMediaVideo(
  frameRate: frameRate ?? this.frameRate,
  quality: quality ?? this.quality,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataConfigMediaVideo &&
          frameRate == other.frameRate &&
          quality == other.quality; } 
@override int get hashCode { return Object.hash(frameRate, quality); } 
@override String toString() { return 'PostPresetsResponseDataConfigMediaVideo(frameRate: $frameRate, quality: $quality)'; } 
 }
