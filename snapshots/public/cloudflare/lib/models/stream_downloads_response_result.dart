// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_downloads.dart';/// An object with download type keys. Each key is optional and only present if that download type has been created.
final class StreamDownloadsResponseResult {const StreamDownloadsResponseResult({this.audio, this.$default, });

factory StreamDownloadsResponseResult.fromJson(Map<String, dynamic> json) { return StreamDownloadsResponseResult(
  audio: json['audio'] != null ? StreamDownloads.fromJson(json['audio'] as Map<String, dynamic>) : null,
  $default: json['default'] != null ? StreamDownloads.fromJson(json['default'] as Map<String, dynamic>) : null,
); }

/// The audio-only download. Only present if this download type has been created.
final StreamDownloads? audio;

/// The default video download. Only present if this download type has been created.
final StreamDownloads? $default;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  if ($default != null) 'default': $default?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'audio', 'default'}.contains(key)); } 
StreamDownloadsResponseResult copyWith({StreamDownloads Function()? audio, StreamDownloads Function()? $default, }) { return StreamDownloadsResponseResult(
  audio: audio != null ? audio() : this.audio,
  $default: $default != null ? $default() : this.$default,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamDownloadsResponseResult &&
          audio == other.audio &&
          $default == other.$default; } 
@override int get hashCode { return Object.hash(audio, $default); } 
@override String toString() { return 'StreamDownloadsResponseResult(audio: $audio, \$default: ${$default})'; } 
 }
