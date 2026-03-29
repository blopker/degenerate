// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_list_public_finetunes_response400_errors.dart';final class WorkersAiListPublicFinetunesResponse400 {const WorkersAiListPublicFinetunesResponse400({required this.errors, required this.result, required this.success, });

factory WorkersAiListPublicFinetunesResponse400.fromJson(Map<String, dynamic> json) { return WorkersAiListPublicFinetunesResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersAiListPublicFinetunesResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<WorkersAiListPublicFinetunesResponse400Errors> errors;

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
WorkersAiListPublicFinetunesResponse400 copyWith({List<WorkersAiListPublicFinetunesResponse400Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return WorkersAiListPublicFinetunesResponse400(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiListPublicFinetunesResponse400 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'WorkersAiListPublicFinetunesResponse400(errors: $errors, result: $result, success: $success)'; } 
 }
