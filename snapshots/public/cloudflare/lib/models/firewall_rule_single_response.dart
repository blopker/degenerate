// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_rule.dart';@immutable final class FirewallRuleSingleResponse {const FirewallRuleSingleResponse({this.result});

factory FirewallRuleSingleResponse.fromJson(Map<String, dynamic> json) { return FirewallRuleSingleResponse(
  result: json['result'] != null ? FirewallRule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final FirewallRule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallRuleSingleResponse copyWith({FirewallRule Function()? result}) { return FirewallRuleSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallRuleSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallRuleSingleResponse(result: $result)'; } 
 }
