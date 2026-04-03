// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_rule.dart';@immutable final class TokenValidationRulesBulkCreateResponse {const TokenValidationRulesBulkCreateResponse({required this.result});

factory TokenValidationRulesBulkCreateResponse.fromJson(Map<String, dynamic> json) { return TokenValidationRulesBulkCreateResponse(
  result: (json['result'] as List<dynamic>).map((e) => ShieldRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldRule> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
TokenValidationRulesBulkCreateResponse copyWith({List<ShieldRule>? result}) { return TokenValidationRulesBulkCreateResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesBulkCreateResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'TokenValidationRulesBulkCreateResponse(result: $result)'; } 
 }
