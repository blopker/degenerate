// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_dataset_populate_response400_errors.dart';final class PostDatasetPopulateResponse400 {const PostDatasetPopulateResponse400({required this.errors, required this.result, required this.success, });

factory PostDatasetPopulateResponse400.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => PostDatasetPopulateResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<PostDatasetPopulateResponse400Errors> errors;

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
PostDatasetPopulateResponse400 copyWith({List<PostDatasetPopulateResponse400Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return PostDatasetPopulateResponse400(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponse400 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'PostDatasetPopulateResponse400(errors: $errors, result: $result, success: $success)'; } 
 }
