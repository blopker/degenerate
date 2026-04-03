// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_json_response_errors.dart';@immutable final class BrapiPostJsonResponse {const BrapiPostJsonResponse({required this.result, required this.success, this.errors, });

factory BrapiPostJsonResponse.fromJson(Map<String, dynamic> json) { return BrapiPostJsonResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostJsonResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)))),
  success: json['success'] as bool,
); }

final List<BrapiPostJsonResponseErrors>? errors;

final Map<String,Map<String,dynamic>?> result;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'result': result.map((k, v) => MapEntry(k, v)),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
BrapiPostJsonResponse copyWith({List<BrapiPostJsonResponseErrors> Function()? errors, Map<String,Map<String,dynamic>?>? result, bool? success, }) { return BrapiPostJsonResponse(
  errors: errors != null ? errors() : this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostJsonResponse &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), result, success); } 
@override String toString() { return 'BrapiPostJsonResponse(errors: $errors, result: $result, success: $success)'; } 
 }
