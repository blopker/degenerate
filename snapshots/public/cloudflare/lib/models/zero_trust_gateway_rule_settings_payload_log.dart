// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configure DLP payload logging. Settable only for `http` rules.
@immutable final class ZeroTrustGatewayRuleSettingsPayloadLog {const ZeroTrustGatewayRuleSettingsPayloadLog({this.enabled});

factory ZeroTrustGatewayRuleSettingsPayloadLog.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayRuleSettingsPayloadLog(
  enabled: json['enabled'] as bool?,
); }

/// Enable DLP payload logging for this rule.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
ZeroTrustGatewayRuleSettingsPayloadLog copyWith({bool Function()? enabled}) { return ZeroTrustGatewayRuleSettingsPayloadLog(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayRuleSettingsPayloadLog &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayRuleSettingsPayloadLog(enabled: $enabled)'; } 
 }
