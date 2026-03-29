// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_list_tokens_response_result.dart';final class AiSearchListTokensResponse {const AiSearchListTokensResponse({required this.result, required this.success, });

factory AiSearchListTokensResponse.fromJson(Map<String, dynamic> json) { return AiSearchListTokensResponse(
  result: (json['result'] as List<dynamic>).map((e) => AiSearchListTokensResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AiSearchListTokensResponseResult> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchListTokensResponse copyWith({List<AiSearchListTokensResponseResult>? result, bool? success, }) { return AiSearchListTokensResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListTokensResponse &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), success); } 
@override String toString() { return 'AiSearchListTokensResponse(result: $result, success: $success)'; } 
 }
