// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WafManagedRulesRuleResponseSingle {const WafManagedRulesRuleResponseSingle({this.result});

factory WafManagedRulesRuleResponseSingle.fromJson(Map<String, dynamic> json) { return WafManagedRulesRuleResponseSingle(
  result: json['result'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafManagedRulesRuleResponseSingle copyWith({Map<String, dynamic> Function()? result}) { return WafManagedRulesRuleResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesRuleResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafManagedRulesRuleResponseSingle(result: $result)'; } 
 }
