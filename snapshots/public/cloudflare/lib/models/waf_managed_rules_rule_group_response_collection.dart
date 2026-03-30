// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_schemas_group.dart';final class WafManagedRulesRuleGroupResponseCollection {const WafManagedRulesRuleGroupResponseCollection({this.result});

factory WafManagedRulesRuleGroupResponseCollection.fromJson(Map<String, dynamic> json) { return WafManagedRulesRuleGroupResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => WafManagedRulesSchemasGroup.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WafManagedRulesSchemasGroup>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafManagedRulesRuleGroupResponseCollection copyWith({List<WafManagedRulesSchemasGroup> Function()? result}) { return WafManagedRulesRuleGroupResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesRuleGroupResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'WafManagedRulesRuleGroupResponseCollection(result: $result)'; } 
 }
