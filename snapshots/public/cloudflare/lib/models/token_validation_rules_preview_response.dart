// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'token_validation_rules_preview_response_result.dart';@immutable final class TokenValidationRulesPreviewResponse {const TokenValidationRulesPreviewResponse({required this.result});

factory TokenValidationRulesPreviewResponse.fromJson(Map<String, dynamic> json) { return TokenValidationRulesPreviewResponse(
  result: TokenValidationRulesPreviewResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final TokenValidationRulesPreviewResponseResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
TokenValidationRulesPreviewResponse copyWith({TokenValidationRulesPreviewResponseResult? result}) { return TokenValidationRulesPreviewResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesPreviewResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TokenValidationRulesPreviewResponse(result: $result)'; } 
 }
