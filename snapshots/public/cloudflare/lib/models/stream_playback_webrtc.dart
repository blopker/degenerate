// GENERATED CODE - DO NOT MODIFY BY HAND

/// The URL used to play live video over WebRTC.
extension type const StreamPlaybackWebrtcUrl(String value) {
factory StreamPlaybackWebrtcUrl.fromJson(String json) => StreamPlaybackWebrtcUrl(json);

String toJson() => value;

}
/// Details for playback from a live input using WebRTC.
final class StreamPlaybackWebrtc {const StreamPlaybackWebrtc({this.url});

factory StreamPlaybackWebrtc.fromJson(Map<String, dynamic> json) { return StreamPlaybackWebrtc(
  url: json['url'] != null ? StreamPlaybackWebrtcUrl.fromJson(json['url'] as String) : null,
); }

final StreamPlaybackWebrtcUrl? url;

Map<String, dynamic> toJson() { return {
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
StreamPlaybackWebrtc copyWith({StreamPlaybackWebrtcUrl Function()? url}) { return StreamPlaybackWebrtc(
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamPlaybackWebrtc &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'StreamPlaybackWebrtc(url: $url)'; } 
 }
