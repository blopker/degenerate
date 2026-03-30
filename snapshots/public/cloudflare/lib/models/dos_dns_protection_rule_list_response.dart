// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_dns_protection_rule.dart';final class DosDnsProtectionRuleListResponse {const DosDnsProtectionRuleListResponse({this.result});

factory DosDnsProtectionRuleListResponse.fromJson(Map<String, dynamic> json) { return DosDnsProtectionRuleListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DosDnsProtectionRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosDnsProtectionRule>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DosDnsProtectionRuleListResponse copyWith({List<DosDnsProtectionRule> Function()? result}) { return DosDnsProtectionRuleListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosDnsProtectionRuleListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DosDnsProtectionRuleListResponse(result: $result)'; } 
 }
