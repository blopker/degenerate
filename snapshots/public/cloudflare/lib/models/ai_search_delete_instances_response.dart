// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_delete_instances_response_result.dart';@immutable final class AiSearchDeleteInstancesResponse {const AiSearchDeleteInstancesResponse({required this.result, required this.success, });

factory AiSearchDeleteInstancesResponse.fromJson(Map<String, dynamic> json) { return AiSearchDeleteInstancesResponse(
  result: AiSearchDeleteInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AiSearchDeleteInstancesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchDeleteInstancesResponse copyWith({AiSearchDeleteInstancesResponseResult? result, bool? success, }) { return AiSearchDeleteInstancesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteInstancesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AiSearchDeleteInstancesResponse(result: $result, success: $success)'; } 
 }
