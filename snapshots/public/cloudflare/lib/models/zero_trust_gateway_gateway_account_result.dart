// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify the Cloudflare account ID.
extension type const ZeroTrustGatewayCfAccountId(String value) {
factory ZeroTrustGatewayCfAccountId.fromJson(String json) => ZeroTrustGatewayCfAccountId(json);

String toJson() => value;

}
/// Specify the gateway internal ID.
extension type const ZeroTrustGatewayGatewayTag(String value) {
factory ZeroTrustGatewayGatewayTag.fromJson(String json) => ZeroTrustGatewayGatewayTag(json);

String toJson() => value;

}
/// Specify the provider name (usually Cloudflare).
extension type const ZeroTrustGatewayProviderName(String value) {
factory ZeroTrustGatewayProviderName.fromJson(String json) => ZeroTrustGatewayProviderName(json);

String toJson() => value;

}
final class ZeroTrustGatewayGatewayAccountResult {const ZeroTrustGatewayGatewayAccountResult({this.gatewayTag, this.id, this.providerName, });

factory ZeroTrustGatewayGatewayAccountResult.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccountResult(
  gatewayTag: json['gateway_tag'] != null ? ZeroTrustGatewayGatewayTag.fromJson(json['gateway_tag'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewayCfAccountId.fromJson(json['id'] as String) : null,
  providerName: json['provider_name'] != null ? ZeroTrustGatewayProviderName.fromJson(json['provider_name'] as String) : null,
); }

final ZeroTrustGatewayGatewayTag? gatewayTag;

/// Specify the Cloudflare account ID.
final ZeroTrustGatewayCfAccountId? id;

final ZeroTrustGatewayProviderName? providerName;

Map<String, dynamic> toJson() { return {
  if (gatewayTag != null) 'gateway_tag': gatewayTag?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (providerName != null) 'provider_name': providerName?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gateway_tag', 'id', 'provider_name'}.contains(key)); } 
ZeroTrustGatewayGatewayAccountResult copyWith({ZeroTrustGatewayGatewayTag Function()? gatewayTag, ZeroTrustGatewayCfAccountId Function()? id, ZeroTrustGatewayProviderName Function()? providerName, }) { return ZeroTrustGatewayGatewayAccountResult(
  gatewayTag: gatewayTag != null ? gatewayTag() : this.gatewayTag,
  id: id != null ? id() : this.id,
  providerName: providerName != null ? providerName() : this.providerName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountResult &&
          gatewayTag == other.gatewayTag &&
          id == other.id &&
          providerName == other.providerName; } 
@override int get hashCode { return Object.hash(gatewayTag, id, providerName); } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccountResult(gatewayTag: $gatewayTag, id: $id, providerName: $providerName)'; } 
 }
