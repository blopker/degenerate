// GENERATED CODE - DO NOT MODIFY BY HAND

/// The identifier of the live input to use when streaming via SRT.
extension type const StreamInputSrtStreamId(String value) {
factory StreamInputSrtStreamId.fromJson(String json) => StreamInputSrtStreamId(json);

String toJson() => value;

}
/// The secret key to use when streaming via SRT to a live input.
extension type const StreamInputSrtStreamPassphrase(String value) {
factory StreamInputSrtStreamPassphrase.fromJson(String json) => StreamInputSrtStreamPassphrase(json);

String toJson() => value;

}
/// The SRT URL you provide to the broadcaster, which they stream live video to.
extension type const StreamInputSrtUrl(String value) {
factory StreamInputSrtUrl.fromJson(String json) => StreamInputSrtUrl(json);

String toJson() => value;

}
/// Details for streaming to a live input using SRT.
final class StreamInputSrt {const StreamInputSrt({this.passphrase, this.streamId, this.url, });

factory StreamInputSrt.fromJson(Map<String, dynamic> json) { return StreamInputSrt(
  passphrase: json['passphrase'] != null ? StreamInputSrtStreamPassphrase.fromJson(json['passphrase'] as String) : null,
  streamId: json['streamId'] != null ? StreamInputSrtStreamId.fromJson(json['streamId'] as String) : null,
  url: json['url'] != null ? StreamInputSrtUrl.fromJson(json['url'] as String) : null,
); }

final StreamInputSrtStreamPassphrase? passphrase;

final StreamInputSrtStreamId? streamId;

final StreamInputSrtUrl? url;

Map<String, dynamic> toJson() { return {
  if (passphrase != null) 'passphrase': passphrase?.toJson(),
  if (streamId != null) 'streamId': streamId?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
StreamInputSrt copyWith({StreamInputSrtStreamPassphrase Function()? passphrase, StreamInputSrtStreamId Function()? streamId, StreamInputSrtUrl Function()? url, }) { return StreamInputSrt(
  passphrase: passphrase != null ? passphrase() : this.passphrase,
  streamId: streamId != null ? streamId() : this.streamId,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamInputSrt &&
          passphrase == other.passphrase &&
          streamId == other.streamId &&
          url == other.url; } 
@override int get hashCode { return Object.hash(passphrase, streamId, url); } 
@override String toString() { return 'StreamInputSrt(passphrase: $passphrase, streamId: $streamId, url: $url)'; } 
 }
