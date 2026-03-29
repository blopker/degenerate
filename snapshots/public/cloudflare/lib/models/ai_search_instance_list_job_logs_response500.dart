// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_list_job_logs_response500_errors.dart';final class AiSearchInstanceListJobLogsResponse500 {const AiSearchInstanceListJobLogsResponse500({required this.errors, required this.success, });

factory AiSearchInstanceListJobLogsResponse500.fromJson(Map<String, dynamic> json) { return AiSearchInstanceListJobLogsResponse500(
  errors: (json['errors'] as List<dynamic>).map((e) => AiSearchInstanceListJobLogsResponse500Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AiSearchInstanceListJobLogsResponse500Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchInstanceListJobLogsResponse500 copyWith({List<AiSearchInstanceListJobLogsResponse500Errors>? errors, bool? success, }) { return AiSearchInstanceListJobLogsResponse500(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceListJobLogsResponse500 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AiSearchInstanceListJobLogsResponse500(errors: $errors, success: $success)'; } 
 }
