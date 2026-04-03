// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_rule_single_id_response_result.dart';@immutable final class FirewallRuleSingleIdResponse {const FirewallRuleSingleIdResponse({this.result});

factory FirewallRuleSingleIdResponse.fromJson(Map<String, dynamic> json) { return FirewallRuleSingleIdResponse(
  result: json['result'] != null ? FirewallRuleSingleIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final FirewallRuleSingleIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
FirewallRuleSingleIdResponse copyWith({FirewallRuleSingleIdResponseResult Function()? result}) { return FirewallRuleSingleIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallRuleSingleIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'FirewallRuleSingleIdResponse(result: $result)'; } 
 }
