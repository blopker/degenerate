// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_filter_rule_response.dart';final class FirewallFilterRulesResponseCollectionDelete {const FirewallFilterRulesResponseCollectionDelete({required this.result});

factory FirewallFilterRulesResponseCollectionDelete.fromJson(Map<String, dynamic> json) { return FirewallFilterRulesResponseCollectionDelete(
  result: (json['result'] as List<dynamic>).map((e) => FirewallFilterRuleResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<FirewallFilterRuleResponse> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallFilterRulesResponseCollectionDelete copyWith({List<FirewallFilterRuleResponse>? result}) { return FirewallFilterRulesResponseCollectionDelete(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterRulesResponseCollectionDelete &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'FirewallFilterRulesResponseCollectionDelete(result: $result)'; } 
 }
