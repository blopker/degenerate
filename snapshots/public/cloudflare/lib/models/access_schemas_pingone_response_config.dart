// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasPingoneResponseConfig {const AccessSchemasPingoneResponseConfig({this.clientId, this.pingEnvId, });

factory AccessSchemasPingoneResponseConfig.fromJson(Map<String, dynamic> json) {return AccessSchemasPingoneResponseConfig(
  clientId: json['client_id'] as String?,
  pingEnvId: json['ping_env_id'] as String?,
);}

/// Your OAuth Client ID
final String? clientId;

/// Your PingOne environment identifier
final String? pingEnvId;

Map<String, dynamic> toJson() {return {
  'client_id': ?clientId,
  'ping_env_id': ?pingEnvId,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'client_id', 'ping_env_id'}.contains(key));}
AccessSchemasPingoneResponseConfig copyWith({String? Function()? clientId, String? Function()? pingEnvId, }) {return AccessSchemasPingoneResponseConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  pingEnvId: pingEnvId != null ? pingEnvId() : this.pingEnvId,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasPingoneResponseConfig &&
          clientId == other.clientId &&
          pingEnvId == other.pingEnvId;}
@override int get hashCode {return Object.hash(clientId, pingEnvId);}
@override String toString() {return 'AccessSchemasPingoneResponseConfig(clientId: $clientId, pingEnvId: $pingEnvId)';}
}
