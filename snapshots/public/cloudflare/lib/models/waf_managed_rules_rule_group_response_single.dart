// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WafManagedRulesRuleGroupResponseSingle {const WafManagedRulesRuleGroupResponseSingle({this.result});

factory WafManagedRulesRuleGroupResponseSingle.fromJson(Map<String, dynamic> json) { return WafManagedRulesRuleGroupResponseSingle(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafManagedRulesRuleGroupResponseSingle copyWith({Map<String, dynamic> Function()? result}) { return WafManagedRulesRuleGroupResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesRuleGroupResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafManagedRulesRuleGroupResponseSingle(result: $result)'; } 
 }
