// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_stats_response_result.dart';@immutable final class AiSearchStatsResponse {const AiSearchStatsResponse({required this.result, required this.success, });

factory AiSearchStatsResponse.fromJson(Map<String, dynamic> json) { return AiSearchStatsResponse(
  result: AiSearchStatsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AiSearchStatsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchStatsResponse copyWith({AiSearchStatsResponseResult? result, bool? success, }) { return AiSearchStatsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchStatsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AiSearchStatsResponse(result: $result, success: $success)'; } 
 }
