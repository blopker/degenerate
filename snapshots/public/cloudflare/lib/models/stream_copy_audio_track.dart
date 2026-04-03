// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_audio_label.dart';@immutable final class StreamCopyAudioTrack {const StreamCopyAudioTrack({required this.label, this.url, });

factory StreamCopyAudioTrack.fromJson(Map<String, dynamic> json) { return StreamCopyAudioTrack(
  label: StreamAudioLabel.fromJson(json['label'] as String),
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
); }

/// A string to uniquely identify the track amongst other audio track labels for the specified video.
final StreamAudioLabel label;

/// An audio track URL. The server must be publicly routable and support `HTTP HEAD` requests and `HTTP GET` range requests. The server should respond to `HTTP HEAD` requests with a `content-range` header that includes the size of the file.
final Uri? url;

Map<String, dynamic> toJson() { return {
  'label': label.toJson(),
  if (url != null) 'url': url?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('label'); } 
StreamCopyAudioTrack copyWith({StreamAudioLabel? label, Uri Function()? url, }) { return StreamCopyAudioTrack(
  label: label ?? this.label,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamCopyAudioTrack &&
          label == other.label &&
          url == other.url; } 
@override int get hashCode { return Object.hash(label, url); } 
@override String toString() { return 'StreamCopyAudioTrack(label: $label, url: $url)'; } 
 }
