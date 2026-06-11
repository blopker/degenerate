// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessPingoneConfig {const AccessPingoneConfig({this.clientId, this.clientSecret, this.claims, this.emailClaimName, this.pingEnvId, });

factory AccessPingoneConfig.fromJson(Map<String, dynamic> json) { return AccessPingoneConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  claims: (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
  emailClaimName: json['email_claim_name'] as String?,
  pingEnvId: json['ping_env_id'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Custom claims
final List<String>? claims;

/// The claim name for email in the id_token response.
final String? emailClaimName;

/// Your PingOne environment identifier
final String? pingEnvId;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'claims': ?claims,
  'email_claim_name': ?emailClaimName,
  'ping_env_id': ?pingEnvId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'claims', 'email_claim_name', 'ping_env_id'}.contains(key)); } 
AccessPingoneConfig copyWith({String Function()? clientId, String Function()? clientSecret, List<String> Function()? claims, String Function()? emailClaimName, String Function()? pingEnvId, }) { return AccessPingoneConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  claims: claims != null ? claims() : this.claims,
  emailClaimName: emailClaimName != null ? emailClaimName() : this.emailClaimName,
  pingEnvId: pingEnvId != null ? pingEnvId() : this.pingEnvId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPingoneConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          listEquals(claims, other.claims) &&
          emailClaimName == other.emailClaimName &&
          pingEnvId == other.pingEnvId; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, Object.hashAll(claims ?? const []), emailClaimName, pingEnvId); } 
@override String toString() { return 'AccessPingoneConfig(clientId: $clientId, clientSecret: $clientSecret, claims: $claims, emailClaimName: $emailClaimName, pingEnvId: $pingEnvId)'; } 
 }
