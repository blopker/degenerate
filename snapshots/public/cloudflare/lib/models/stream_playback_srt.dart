// GENERATED CODE - DO NOT MODIFY BY HAND

/// The identifier of the live input to use for playback via SRT.
extension type const StreamPlaybackSrtStreamId(String value) {
factory StreamPlaybackSrtStreamId.fromJson(String json) => StreamPlaybackSrtStreamId(json);

String toJson() => value;

}
/// The secret key to use for playback via SRT.
extension type const StreamPlaybackSrtStreamPassphrase(String value) {
factory StreamPlaybackSrtStreamPassphrase.fromJson(String json) => StreamPlaybackSrtStreamPassphrase(json);

String toJson() => value;

}
/// The URL used to play live video over SRT.
extension type const StreamPlaybackSrtUrl(String value) {
factory StreamPlaybackSrtUrl.fromJson(String json) => StreamPlaybackSrtUrl(json);

String toJson() => value;

}
/// Details for playback from an live input using SRT.
final class StreamPlaybackSrt {const StreamPlaybackSrt({this.passphrase, this.streamId, this.url, });

factory StreamPlaybackSrt.fromJson(Map<String, dynamic> json) { return StreamPlaybackSrt(
  passphrase: json['passphrase'] != null ? StreamPlaybackSrtStreamPassphrase.fromJson(json['passphrase'] as String) : null,
  streamId: json['streamId'] != null ? StreamPlaybackSrtStreamId.fromJson(json['streamId'] as String) : null,
  url: json['url'] != null ? StreamPlaybackSrtUrl.fromJson(json['url'] as String) : null,
); }

final StreamPlaybackSrtStreamPassphrase? passphrase;

final StreamPlaybackSrtStreamId? streamId;

final StreamPlaybackSrtUrl? url;

Map<String, dynamic> toJson() { return {
  if (passphrase != null) 'passphrase': passphrase?.toJson(),
  if (streamId != null) 'streamId': streamId?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'passphrase', 'streamId', 'url'}.contains(key)); } 
StreamPlaybackSrt copyWith({StreamPlaybackSrtStreamPassphrase Function()? passphrase, StreamPlaybackSrtStreamId Function()? streamId, StreamPlaybackSrtUrl Function()? url, }) { return StreamPlaybackSrt(
  passphrase: passphrase != null ? passphrase() : this.passphrase,
  streamId: streamId != null ? streamId() : this.streamId,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamPlaybackSrt &&
          passphrase == other.passphrase &&
          streamId == other.streamId &&
          url == other.url; } 
@override int get hashCode { return Object.hash(passphrase, streamId, url); } 
@override String toString() { return 'StreamPlaybackSrt(passphrase: $passphrase, streamId: $streamId, url: $url)'; } 
 }
