// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_to_markdown_response_result.dart';final class WorkersAiPostToMarkdownResponse {const WorkersAiPostToMarkdownResponse({required this.result, required this.success, });

factory WorkersAiPostToMarkdownResponse.fromJson(Map<String, dynamic> json) { return WorkersAiPostToMarkdownResponse(
  result: (json['result'] as List<dynamic>).map((e) => WorkersAiPostToMarkdownResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<WorkersAiPostToMarkdownResponseResult> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
WorkersAiPostToMarkdownResponse copyWith({List<WorkersAiPostToMarkdownResponseResult>? result, bool? success, }) { return WorkersAiPostToMarkdownResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostToMarkdownResponse &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), success); } 
@override String toString() { return 'WorkersAiPostToMarkdownResponse(result: $result, success: $success)'; } 
 }
