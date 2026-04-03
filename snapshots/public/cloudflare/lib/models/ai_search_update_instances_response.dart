// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_instances_response_result.dart';@immutable final class AiSearchUpdateInstancesResponse {const AiSearchUpdateInstancesResponse({required this.result, required this.success, });

factory AiSearchUpdateInstancesResponse.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponse(
  result: AiSearchUpdateInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AiSearchUpdateInstancesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchUpdateInstancesResponse copyWith({AiSearchUpdateInstancesResponseResult? result, bool? success, }) { return AiSearchUpdateInstancesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AiSearchUpdateInstancesResponse(result: $result, success: $success)'; } 
 }
