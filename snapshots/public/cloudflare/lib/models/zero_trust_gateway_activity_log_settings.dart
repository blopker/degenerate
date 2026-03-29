// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify activity log settings.
final class ZeroTrustGatewayActivityLogSettings {const ZeroTrustGatewayActivityLogSettings({this.enabled});

factory ZeroTrustGatewayActivityLogSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayActivityLogSettings(
  enabled: json['enabled'] as bool?,
); }

/// Specify whether to log activity.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZeroTrustGatewayActivityLogSettings copyWith({bool? Function()? enabled}) { return ZeroTrustGatewayActivityLogSettings(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayActivityLogSettings &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayActivityLogSettings(enabled: $enabled)'; } 
 }
