// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZeroTrustGatewayIpv4Endpoint {const ZeroTrustGatewayIpv4Endpoint({this.enabled});

factory ZeroTrustGatewayIpv4Endpoint.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayIpv4Endpoint(
  enabled: json['enabled'] as bool?,
); }

/// Indicate whether the IPv4 endpoint is enabled for this location.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZeroTrustGatewayIpv4Endpoint copyWith({bool Function()? enabled}) { return ZeroTrustGatewayIpv4Endpoint(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayIpv4Endpoint &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayIpv4Endpoint(enabled: $enabled)'; } 
 }
