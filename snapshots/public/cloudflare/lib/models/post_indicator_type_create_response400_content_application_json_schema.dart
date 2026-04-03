// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_indicator_type_create_response400_content_application_json_schema_errors.dart';@immutable final class PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema {const PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema({required this.errors, required this.result, required this.success, });

factory PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema.fromJson(Map<String, dynamic> json) { return PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema(
  errors: (json['errors'] as List<dynamic>).map((e) => PostIndicatorTypeCreateResponse400ContentApplicationJsonSchemaErrors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<PostIndicatorTypeCreateResponse400ContentApplicationJsonSchemaErrors> errors;

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
PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema copyWith({List<PostIndicatorTypeCreateResponse400ContentApplicationJsonSchemaErrors>? errors, Map<String,dynamic>? result, bool? success, }) { return PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'PostIndicatorTypeCreateResponse400ContentApplicationJsonSchema(errors: $errors, result: $result, success: $success)'; } 
 }
