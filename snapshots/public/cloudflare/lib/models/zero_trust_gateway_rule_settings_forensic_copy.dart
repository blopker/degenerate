// GENERATED CODE - DO NOT MODIFY BY HAND

/// Configure whether a copy of the HTTP request will be sent to storage when the rule matches.
final class ZeroTrustGatewayRuleSettingsForensicCopy {const ZeroTrustGatewayRuleSettingsForensicCopy({this.enabled});

factory ZeroTrustGatewayRuleSettingsForensicCopy.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayRuleSettingsForensicCopy(
  enabled: json['enabled'] as bool?,
); }

/// Enable sending the copy to storage.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewayRuleSettingsForensicCopy copyWith({bool Function()? enabled}) { return ZeroTrustGatewayRuleSettingsForensicCopy(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayRuleSettingsForensicCopy &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayRuleSettingsForensicCopy(enabled: $enabled)'; } 
 }
