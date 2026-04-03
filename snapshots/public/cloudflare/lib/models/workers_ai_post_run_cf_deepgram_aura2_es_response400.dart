// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_run_cf_deepgram_aura2_es_response400_errors.dart';@immutable final class WorkersAiPostRunCfDeepgramAura2EsResponse400 {const WorkersAiPostRunCfDeepgramAura2EsResponse400({required this.errors, required this.result, required this.success, });

factory WorkersAiPostRunCfDeepgramAura2EsResponse400.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfDeepgramAura2EsResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersAiPostRunCfDeepgramAura2EsResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
); }

final List<WorkersAiPostRunCfDeepgramAura2EsResponse400Errors> errors;

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
WorkersAiPostRunCfDeepgramAura2EsResponse400 copyWith({List<WorkersAiPostRunCfDeepgramAura2EsResponse400Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return WorkersAiPostRunCfDeepgramAura2EsResponse400(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfDeepgramAura2EsResponse400 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'WorkersAiPostRunCfDeepgramAura2EsResponse400(errors: $errors, result: $result, success: $success)'; } 
 }
