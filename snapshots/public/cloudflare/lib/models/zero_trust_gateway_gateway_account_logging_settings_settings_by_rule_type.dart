// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_account_log_options.dart';/// Configure logging settings for each rule type.
final class ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType {const ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType({this.dns, this.http, this.l4, });

factory ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType(
  dns: json['dns'] != null ? ZeroTrustGatewayAccountLogOptions.fromJson(json['dns'] as Map<String, dynamic>) : null,
  http: json['http'] != null ? ZeroTrustGatewayAccountLogOptions.fromJson(json['http'] as Map<String, dynamic>) : null,
  l4: json['l4'] != null ? ZeroTrustGatewayAccountLogOptions.fromJson(json['l4'] as Map<String, dynamic>) : null,
); }

/// Configure logging settings for DNS firewall.
final ZeroTrustGatewayAccountLogOptions? dns;

/// Configure logging settings for HTTP/HTTPS firewall.
final ZeroTrustGatewayAccountLogOptions? http;

/// Configure logging settings for Network firewall.
final ZeroTrustGatewayAccountLogOptions? l4;

Map<String, dynamic> toJson() { return {
  if (dns != null) 'dns': dns?.toJson(),
  if (http != null) 'http': http?.toJson(),
  if (l4 != null) 'l4': l4?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dns', 'http', 'l4'}.contains(key)); } 
ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType copyWith({ZeroTrustGatewayAccountLogOptions Function()? dns, ZeroTrustGatewayAccountLogOptions Function()? http, ZeroTrustGatewayAccountLogOptions Function()? l4, }) { return ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType(
  dns: dns != null ? dns() : this.dns,
  http: http != null ? http() : this.http,
  l4: l4 != null ? l4() : this.l4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType &&
          dns == other.dns &&
          http == other.http &&
          l4 == other.l4; } 
@override int get hashCode { return Object.hash(dns, http, l4); } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccountLoggingSettingsSettingsByRuleType(dns: $dns, http: $http, l4: $l4)'; } 
 }
