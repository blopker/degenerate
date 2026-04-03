// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'streams_response_result_http_cors.dart';@immutable final class StreamsResponseResultHttp {const StreamsResponseResultHttp({required this.authentication, required this.enabled, this.cors, });

factory StreamsResponseResultHttp.fromJson(Map<String, dynamic> json) { return StreamsResponseResultHttp(
  authentication: json['authentication'] as bool,
  cors: json['cors'] != null ? StreamsResponseResultHttpCors.fromJson(json['cors'] as Map<String, dynamic>) : null,
  enabled: json['enabled'] as bool,
); }

/// Indicates that authentication is required for the HTTP endpoint.
final bool authentication;

/// Specifies the CORS options for the HTTP endpoint.
final StreamsResponseResultHttpCors? cors;

/// Indicates that the HTTP endpoint is enabled.
final bool enabled;

Map<String, dynamic> toJson() { return {
  'authentication': authentication,
  if (cors != null) 'cors': cors?.toJson(),
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('authentication') && json['authentication'] is bool &&
      json.containsKey('enabled') && json['enabled'] is bool; } 
StreamsResponseResultHttp copyWith({bool? authentication, StreamsResponseResultHttpCors Function()? cors, bool? enabled, }) { return StreamsResponseResultHttp(
  authentication: authentication ?? this.authentication,
  cors: cors != null ? cors() : this.cors,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsResponseResultHttp &&
          authentication == other.authentication &&
          cors == other.cors &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(authentication, cors, enabled); } 
@override String toString() { return 'StreamsResponseResultHttp(authentication: $authentication, cors: $cors, enabled: $enabled)'; } 
 }
