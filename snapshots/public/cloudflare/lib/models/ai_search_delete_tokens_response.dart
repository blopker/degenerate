// GENERATED CODE - DO NOT MODIFY BY HAND

import 'ai_search_delete_tokens_response_result.dart';final class AiSearchDeleteTokensResponse {const AiSearchDeleteTokensResponse({required this.result, required this.success, });

factory AiSearchDeleteTokensResponse.fromJson(Map<String, dynamic> json) { return AiSearchDeleteTokensResponse(
  result: AiSearchDeleteTokensResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AiSearchDeleteTokensResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchDeleteTokensResponse copyWith({AiSearchDeleteTokensResponseResult? result, bool? success, }) { return AiSearchDeleteTokensResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteTokensResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AiSearchDeleteTokensResponse(result: $result, success: $success)'; } 
 }
