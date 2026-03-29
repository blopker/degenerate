// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_run_cf_black_forest_labs_flux2_dev_response400_errors.dart';final class WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400 {const WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400({required this.errors, required this.result, required this.success, });

factory WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400Errors> errors;

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
WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400 copyWith({List<WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400(errors: $errors, result: $result, success: $success)'; } 
 }
