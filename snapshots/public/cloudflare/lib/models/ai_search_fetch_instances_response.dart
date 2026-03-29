// GENERATED CODE - DO NOT MODIFY BY HAND

import 'ai_search_fetch_instances_response_result.dart';final class AiSearchFetchInstancesResponse {const AiSearchFetchInstancesResponse({required this.result, required this.success, });

factory AiSearchFetchInstancesResponse.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponse(
  result: AiSearchFetchInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AiSearchFetchInstancesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchFetchInstancesResponse copyWith({AiSearchFetchInstancesResponseResult? result, bool? success, }) { return AiSearchFetchInstancesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AiSearchFetchInstancesResponse(result: $result, success: $success)'; } 
 }
