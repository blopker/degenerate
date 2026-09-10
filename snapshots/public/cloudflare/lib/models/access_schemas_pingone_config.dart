// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasPingoneConfig {const AccessSchemasPingoneConfig({this.clientId, this.clientSecret, this.pingEnvId, });

factory AccessSchemasPingoneConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasPingoneConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  pingEnvId: json['ping_env_id'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Your PingOne environment identifier
final String? pingEnvId;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'ping_env_id': ?pingEnvId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'ping_env_id'}.contains(key)); } 
AccessSchemasPingoneConfig copyWith({String? Function()? clientId, String? Function()? clientSecret, String? Function()? pingEnvId, }) { return AccessSchemasPingoneConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  pingEnvId: pingEnvId != null ? pingEnvId() : this.pingEnvId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasPingoneConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          pingEnvId == other.pingEnvId; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, pingEnvId); } 
@override String toString() { return 'AccessSchemasPingoneConfig(clientId: $clientId, clientSecret: $clientSecret, pingEnvId: $pingEnvId)'; } 
 }
