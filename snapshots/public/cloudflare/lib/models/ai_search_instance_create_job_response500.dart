// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_create_job_response500_errors.dart';@immutable final class AiSearchInstanceCreateJobResponse500 {const AiSearchInstanceCreateJobResponse500({required this.errors, required this.success, });

factory AiSearchInstanceCreateJobResponse500.fromJson(Map<String, dynamic> json) { return AiSearchInstanceCreateJobResponse500(
  errors: (json['errors'] as List<dynamic>).map((e) => AiSearchInstanceCreateJobResponse500Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AiSearchInstanceCreateJobResponse500Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchInstanceCreateJobResponse500 copyWith({List<AiSearchInstanceCreateJobResponse500Errors>? errors, bool? success, }) { return AiSearchInstanceCreateJobResponse500(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceCreateJobResponse500 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AiSearchInstanceCreateJobResponse500(errors: $errors, success: $success)'; } 
 }
