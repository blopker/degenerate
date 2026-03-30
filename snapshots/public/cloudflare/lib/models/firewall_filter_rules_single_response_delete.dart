// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_filter_rule_response.dart';final class FirewallFilterRulesSingleResponseDelete {const FirewallFilterRulesSingleResponseDelete({required this.result});

factory FirewallFilterRulesSingleResponseDelete.fromJson(Map<String, dynamic> json) { return FirewallFilterRulesSingleResponseDelete(
  result: FirewallFilterRuleResponse.fromJson(json['result'] as Map<String, dynamic>),
); }

final FirewallFilterRuleResponse result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
FirewallFilterRulesSingleResponseDelete copyWith({FirewallFilterRuleResponse? result}) { return FirewallFilterRulesSingleResponseDelete(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterRulesSingleResponseDelete &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallFilterRulesSingleResponseDelete(result: $result)'; } 
 }
