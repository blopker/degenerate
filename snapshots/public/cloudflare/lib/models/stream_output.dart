// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_output_enabled.dart';import 'stream_output_identifier.dart';import 'stream_output_stream_key.dart';import 'stream_output_url.dart';final class StreamOutput {const StreamOutput({this.enabled, this.streamKey, this.uid, this.url, });

factory StreamOutput.fromJson(Map<String, dynamic> json) { return StreamOutput(
  enabled: json['enabled'] != null ? StreamOutputEnabled.fromJson(json['enabled'] as bool) : null,
  streamKey: json['streamKey'] != null ? StreamOutputStreamKey.fromJson(json['streamKey'] as String) : null,
  uid: json['uid'] != null ? StreamOutputIdentifier.fromJson(json['uid'] as String) : null,
  url: json['url'] != null ? StreamOutputUrl.fromJson(json['url'] as String) : null,
); }

final StreamOutputEnabled? enabled;

final StreamOutputStreamKey? streamKey;

final StreamOutputIdentifier? uid;

final StreamOutputUrl? url;

Map<String, dynamic> toJson() { return {
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (streamKey != null) 'streamKey': streamKey?.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'streamKey', 'uid', 'url'}.contains(key)); } 
StreamOutput copyWith({StreamOutputEnabled Function()? enabled, StreamOutputStreamKey Function()? streamKey, StreamOutputIdentifier Function()? uid, StreamOutputUrl Function()? url, }) { return StreamOutput(
  enabled: enabled != null ? enabled() : this.enabled,
  streamKey: streamKey != null ? streamKey() : this.streamKey,
  uid: uid != null ? uid() : this.uid,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamOutput &&
          enabled == other.enabled &&
          streamKey == other.streamKey &&
          uid == other.uid &&
          url == other.url; } 
@override int get hashCode { return Object.hash(enabled, streamKey, uid, url); } 
@override String toString() { return 'StreamOutput(enabled: $enabled, streamKey: $streamKey, uid: $uid, url: $url)'; } 
 }
