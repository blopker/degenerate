// GENERATED CODE - DO NOT MODIFY BY HAND

/// Enable host selection in egress policies.
final class ZeroTrustGatewayHostSelectorSettings {const ZeroTrustGatewayHostSelectorSettings({this.enabled});

factory ZeroTrustGatewayHostSelectorSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayHostSelectorSettings(
  enabled: json['enabled'] as bool?,
); }

/// Specify whether to enable filtering via hosts for egress policies.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZeroTrustGatewayHostSelectorSettings copyWith({bool? Function()? enabled}) { return ZeroTrustGatewayHostSelectorSettings(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayHostSelectorSettings &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayHostSelectorSettings(enabled: $enabled)'; } 
 }
