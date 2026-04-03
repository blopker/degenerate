// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_tcp_flow_protection_rule.dart';@immutable final class DosTcpFlowProtectionRuleListResponse {const DosTcpFlowProtectionRuleListResponse({this.result});

factory DosTcpFlowProtectionRuleListResponse.fromJson(Map<String, dynamic> json) { return DosTcpFlowProtectionRuleListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DosTcpFlowProtectionRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosTcpFlowProtectionRule>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DosTcpFlowProtectionRuleListResponse copyWith({List<DosTcpFlowProtectionRule> Function()? result}) { return DosTcpFlowProtectionRuleListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosTcpFlowProtectionRuleListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DosTcpFlowProtectionRuleListResponse(result: $result)'; } 
 }
