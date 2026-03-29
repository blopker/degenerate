// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_fetch_gateway_response_result_dlp_variant2_policies.dart';final class AigConfigFetchGatewayResponseResultDlpVariant2 {const AigConfigFetchGatewayResponseResultDlpVariant2({required this.enabled, required this.policies, });

factory AigConfigFetchGatewayResponseResultDlpVariant2.fromJson(Map<String, dynamic> json) { return AigConfigFetchGatewayResponseResultDlpVariant2(
  enabled: json['enabled'] as bool,
  policies: (json['policies'] as List<dynamic>).map((e) => AigConfigFetchGatewayResponseResultDlpVariant2Policies.fromJson(e as Map<String, dynamic>)).toList(),
); }

final bool enabled;

final List<AigConfigFetchGatewayResponseResultDlpVariant2Policies> policies;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'policies': policies.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('policies'); } 
AigConfigFetchGatewayResponseResultDlpVariant2 copyWith({bool? enabled, List<AigConfigFetchGatewayResponseResultDlpVariant2Policies>? policies, }) { return AigConfigFetchGatewayResponseResultDlpVariant2(
  enabled: enabled ?? this.enabled,
  policies: policies ?? this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigFetchGatewayResponseResultDlpVariant2 &&
          enabled == other.enabled &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(enabled, Object.hashAll(policies)); } 
@override String toString() { return 'AigConfigFetchGatewayResponseResultDlpVariant2(enabled: $enabled, policies: $policies)'; } 
 }
