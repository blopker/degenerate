// GENERATED CODE - DO NOT MODIFY BY HAND

import 'streams_by_stream_id_response_result_http_cors.dart';final class StreamsByStreamIdResponseResultHttp {const StreamsByStreamIdResponseResultHttp({required this.authentication, this.cors, required this.enabled, });

factory StreamsByStreamIdResponseResultHttp.fromJson(Map<String, dynamic> json) { return StreamsByStreamIdResponseResultHttp(
  authentication: json['authentication'] as bool,
  cors: json['cors'] != null ? StreamsByStreamIdResponseResultHttpCors.fromJson(json['cors'] as Map<String, dynamic>) : null,
  enabled: json['enabled'] as bool,
); }

/// Indicates that authentication is required for the HTTP endpoint.
final bool authentication;

/// Specifies the CORS options for the HTTP endpoint.
final StreamsByStreamIdResponseResultHttpCors? cors;

/// Indicates that the HTTP endpoint is enabled.
final bool enabled;

Map<String, dynamic> toJson() { return {
  'authentication': authentication,
  if (cors != null) 'cors': cors?.toJson(),
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('authentication') && json['authentication'] is bool &&
      json.containsKey('enabled') && json['enabled'] is bool; } 
StreamsByStreamIdResponseResultHttp copyWith({bool? authentication, StreamsByStreamIdResponseResultHttpCors Function()? cors, bool? enabled, }) { return StreamsByStreamIdResponseResultHttp(
  authentication: authentication ?? this.authentication,
  cors: cors != null ? cors() : this.cors,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsByStreamIdResponseResultHttp &&
          authentication == other.authentication &&
          cors == other.cors &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(authentication, cors, enabled); } 
@override String toString() { return 'StreamsByStreamIdResponseResultHttp(authentication: $authentication, cors: $cors, enabled: $enabled)'; } 
 }
