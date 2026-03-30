// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_rule.dart';final class FirewallRuleCollectionResponse {const FirewallRuleCollectionResponse({this.result});

factory FirewallRuleCollectionResponse.fromJson(Map<String, dynamic> json) { return FirewallRuleCollectionResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => FirewallRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<FirewallRule>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallRuleCollectionResponse copyWith({List<FirewallRule> Function()? result}) { return FirewallRuleCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallRuleCollectionResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'FirewallRuleCollectionResponse(result: $result)'; } 
 }
