// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_list_finetunes_response_result.dart';@immutable final class WorkersAiListFinetunesResponse {const WorkersAiListFinetunesResponse({required this.result, required this.success, });

factory WorkersAiListFinetunesResponse.fromJson(Map<String, dynamic> json) { return WorkersAiListFinetunesResponse(
  result: WorkersAiListFinetunesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final WorkersAiListFinetunesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
WorkersAiListFinetunesResponse copyWith({WorkersAiListFinetunesResponseResult? result, bool? success, }) { return WorkersAiListFinetunesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiListFinetunesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'WorkersAiListFinetunesResponse(result: $result, success: $success)'; } 
 }
