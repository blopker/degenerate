// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_gateway_account_config_result_settings.dart';import 'zero_trust_gateway_read_only_timestamp.dart';final class ZeroTrustGatewayGatewayAccountConfigResult {const ZeroTrustGatewayGatewayAccountConfigResult({this.settings, this.createdAt, this.updatedAt, });

factory ZeroTrustGatewayGatewayAccountConfigResult.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccountConfigResult(
  settings: json['settings'] != null ? ZeroTrustGatewayGatewayAccountConfigResultSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  updatedAt: json['updated_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['updated_at'] as String) : null,
); }

/// Specify account settings.
final ZeroTrustGatewayGatewayAccountConfigResultSettings? settings;

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

final ZeroTrustGatewayReadOnlyTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (settings != null) 'settings': settings?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'settings', 'created_at', 'updated_at'}.contains(key)); } 
ZeroTrustGatewayGatewayAccountConfigResult copyWith({ZeroTrustGatewayGatewayAccountConfigResultSettings Function()? settings, ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayReadOnlyTimestamp Function()? updatedAt, }) { return ZeroTrustGatewayGatewayAccountConfigResult(
  settings: settings != null ? settings() : this.settings,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountConfigResult &&
          settings == other.settings &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(settings, createdAt, updatedAt); } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccountConfigResult(settings: $settings, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
