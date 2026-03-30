// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_filter_rule_response.dart';final class FirewallFilterRulesResponseCollection {const FirewallFilterRulesResponseCollection({required this.result});

factory FirewallFilterRulesResponseCollection.fromJson(Map<String, dynamic> json) { return FirewallFilterRulesResponseCollection(
  result: (json['result'] as List<dynamic>).map((e) => FirewallFilterRuleResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<FirewallFilterRuleResponse> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallFilterRulesResponseCollection copyWith({List<FirewallFilterRuleResponse>? result}) { return FirewallFilterRulesResponseCollection(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterRulesResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'FirewallFilterRulesResponseCollection(result: $result)'; } 
 }
