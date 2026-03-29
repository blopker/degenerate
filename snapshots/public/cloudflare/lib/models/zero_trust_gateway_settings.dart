// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_public_key.dart';import 'zero_trust_gateway_read_only_timestamp.dart';/// Identify the seed ID.
extension type const ZeroTrustGatewayAuditSshSettingsComponentsSchemasUuid(String value) {
factory ZeroTrustGatewayAuditSshSettingsComponentsSchemasUuid.fromJson(String json) => ZeroTrustGatewayAuditSshSettingsComponentsSchemasUuid(json);

String toJson() => value;

}
final class ZeroTrustGatewaySettings {const ZeroTrustGatewaySettings({this.createdAt, this.publicKey, this.seedId, this.updatedAt, });

factory ZeroTrustGatewaySettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySettings(
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  publicKey: json['public_key'] != null ? ZeroTrustGatewayPublicKey.fromJson(json['public_key'] as String) : null,
  seedId: json['seed_id'] != null ? ZeroTrustGatewayAuditSshSettingsComponentsSchemasUuid.fromJson(json['seed_id'] as String) : null,
  updatedAt: json['updated_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['updated_at'] as String) : null,
); }

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

/// Provide the Base64-encoded HPKE public key that encrypts SSH session logs. See https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/use-cases/ssh/ssh-infrastructure-access/#enable-ssh-command-logging.
final ZeroTrustGatewayPublicKey? publicKey;

/// Identify the seed ID.
final ZeroTrustGatewayAuditSshSettingsComponentsSchemasUuid? seedId;

final ZeroTrustGatewayReadOnlyTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (publicKey != null) 'public_key': publicKey?.toJson(),
  if (seedId != null) 'seed_id': seedId?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'public_key', 'seed_id', 'updated_at'}.contains(key)); } 
ZeroTrustGatewaySettings copyWith({ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayPublicKey Function()? publicKey, ZeroTrustGatewayAuditSshSettingsComponentsSchemasUuid Function()? seedId, ZeroTrustGatewayReadOnlyTimestamp Function()? updatedAt, }) { return ZeroTrustGatewaySettings(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  publicKey: publicKey != null ? publicKey() : this.publicKey,
  seedId: seedId != null ? seedId() : this.seedId,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySettings &&
          createdAt == other.createdAt &&
          publicKey == other.publicKey &&
          seedId == other.seedId &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, publicKey, seedId, updatedAt); } 
@override String toString() { return 'ZeroTrustGatewaySettings(createdAt: $createdAt, publicKey: $publicKey, seedId: $seedId, updatedAt: $updatedAt)'; } 
 }
