// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_syn_protection_rule.dart';@immutable final class DosSynProtectionRuleListResponse {const DosSynProtectionRuleListResponse({this.result});

factory DosSynProtectionRuleListResponse.fromJson(Map<String, dynamic> json) { return DosSynProtectionRuleListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DosSynProtectionRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosSynProtectionRule>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DosSynProtectionRuleListResponse copyWith({List<DosSynProtectionRule> Function()? result}) { return DosSynProtectionRuleListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosSynProtectionRuleListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DosSynProtectionRuleListResponse(result: $result)'; } 
 }
