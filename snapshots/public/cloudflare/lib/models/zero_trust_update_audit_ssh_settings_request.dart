// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_public_key.dart';@immutable final class ZeroTrustUpdateAuditSshSettingsRequest {const ZeroTrustUpdateAuditSshSettingsRequest({required this.publicKey});

factory ZeroTrustUpdateAuditSshSettingsRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustUpdateAuditSshSettingsRequest(
  publicKey: ZeroTrustGatewayPublicKey.fromJson(json['public_key'] as String),
); }

/// Provide the Base64-encoded HPKE public key that encrypts SSH session logs. See https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/use-cases/ssh/ssh-infrastructure-access/#enable-ssh-command-logging.
final ZeroTrustGatewayPublicKey publicKey;

Map<String, dynamic> toJson() { return {
  'public_key': publicKey.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('public_key'); } 
ZeroTrustUpdateAuditSshSettingsRequest copyWith({ZeroTrustGatewayPublicKey? publicKey}) { return ZeroTrustUpdateAuditSshSettingsRequest(
  publicKey: publicKey ?? this.publicKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustUpdateAuditSshSettingsRequest &&
          publicKey == other.publicKey; } 
@override int get hashCode { return publicKey.hashCode; } 
@override String toString() { return 'ZeroTrustUpdateAuditSshSettingsRequest(publicKey: $publicKey)'; } 
 }
