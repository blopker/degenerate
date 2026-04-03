// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The secret key to use for playback via RTMPS.
extension type const StreamPlaybackRtmpsStreamKey(String value) {
factory StreamPlaybackRtmpsStreamKey.fromJson(String json) => StreamPlaybackRtmpsStreamKey(json);

String toJson() => value;

}
/// The URL used to play live video over RTMPS.
extension type const StreamPlaybackRtmpsUrl(String value) {
factory StreamPlaybackRtmpsUrl.fromJson(String json) => StreamPlaybackRtmpsUrl(json);

String toJson() => value;

}
/// Details for playback from an live input using RTMPS.
@immutable final class StreamPlaybackRtmps {const StreamPlaybackRtmps({this.streamKey, this.url, });

factory StreamPlaybackRtmps.fromJson(Map<String, dynamic> json) { return StreamPlaybackRtmps(
  streamKey: json['streamKey'] != null ? StreamPlaybackRtmpsStreamKey.fromJson(json['streamKey'] as String) : null,
  url: json['url'] != null ? StreamPlaybackRtmpsUrl.fromJson(json['url'] as String) : null,
); }

final StreamPlaybackRtmpsStreamKey? streamKey;

final StreamPlaybackRtmpsUrl? url;

Map<String, dynamic> toJson() { return {
  if (streamKey != null) 'streamKey': streamKey?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'streamKey', 'url'}.contains(key)); } 
StreamPlaybackRtmps copyWith({StreamPlaybackRtmpsStreamKey Function()? streamKey, StreamPlaybackRtmpsUrl Function()? url, }) { return StreamPlaybackRtmps(
  streamKey: streamKey != null ? streamKey() : this.streamKey,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamPlaybackRtmps &&
          streamKey == other.streamKey &&
          url == other.url; } 
@override int get hashCode { return Object.hash(streamKey, url); } 
@override String toString() { return 'StreamPlaybackRtmps(streamKey: $streamKey, url: $url)'; } 
 }
