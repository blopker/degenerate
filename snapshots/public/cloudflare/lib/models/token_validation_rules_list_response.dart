// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_rule.dart';@immutable final class TokenValidationRulesListResponse {const TokenValidationRulesListResponse({required this.result});

factory TokenValidationRulesListResponse.fromJson(Map<String, dynamic> json) { return TokenValidationRulesListResponse(
  result: (json['result'] as List<dynamic>).map((e) => ShieldRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldRule> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
TokenValidationRulesListResponse copyWith({List<ShieldRule>? result}) { return TokenValidationRulesListResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'TokenValidationRulesListResponse(result: $result)'; } 
 }
