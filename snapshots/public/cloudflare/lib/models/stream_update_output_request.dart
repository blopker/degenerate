// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_output_enabled.dart';@immutable final class StreamUpdateOutputRequest {const StreamUpdateOutputRequest({required this.enabled});

factory StreamUpdateOutputRequest.fromJson(Map<String, dynamic> json) { return StreamUpdateOutputRequest(
  enabled: StreamOutputEnabled.fromJson(json['enabled'] as bool),
); }

/// When enabled, live video streamed to the associated live input will be sent to the output URL. When disabled, live video will not be sent to the output URL, even when streaming to the associated live input. Use this to control precisely when you start and stop simulcasting to specific destinations like YouTube and Twitch.
final StreamOutputEnabled enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled'); } 
StreamUpdateOutputRequest copyWith({StreamOutputEnabled? enabled}) { return StreamUpdateOutputRequest(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamUpdateOutputRequest &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'StreamUpdateOutputRequest(enabled: $enabled)'; } 
 }
