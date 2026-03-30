// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_rule.dart';final class TokenValidationRulesEditResponse {const TokenValidationRulesEditResponse({required this.result});

factory TokenValidationRulesEditResponse.fromJson(Map<String, dynamic> json) { return TokenValidationRulesEditResponse(
  result: ShieldRule.fromJson(json['result'] as Map<String, dynamic>),
); }

final ShieldRule result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
TokenValidationRulesEditResponse copyWith({ShieldRule? result}) { return TokenValidationRulesEditResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesEditResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TokenValidationRulesEditResponse(result: $result)'; } 
 }
