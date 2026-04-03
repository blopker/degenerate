// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_run_cf_huggingface_distilbert_sst2_int8_response400_errors.dart';@immutable final class WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400 {const WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400({required this.errors, required this.result, required this.success, });

factory WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400Errors> errors;

final Map<String,dynamic> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400 copyWith({List<WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400(errors: $errors, result: $result, success: $success)'; } 
 }
