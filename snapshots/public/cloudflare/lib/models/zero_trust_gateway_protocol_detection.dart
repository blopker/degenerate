// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify whether to detect protocols from the initial bytes of client traffic.
final class ZeroTrustGatewayProtocolDetection {const ZeroTrustGatewayProtocolDetection({this.enabled});

factory ZeroTrustGatewayProtocolDetection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProtocolDetection(
  enabled: json['enabled'] as bool?,
); }

/// Specify whether to detect protocols from the initial bytes of client traffic.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewayProtocolDetection copyWith({bool? Function()? enabled}) { return ZeroTrustGatewayProtocolDetection(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayProtocolDetection &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProtocolDetection(enabled: $enabled)'; } 
 }
