// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tag_category_create_response409_errors.dart';@immutable final class PostTagCategoryCreateResponse409 {const PostTagCategoryCreateResponse409({required this.errors, required this.result, required this.success, });

factory PostTagCategoryCreateResponse409.fromJson(Map<String, dynamic> json) { return PostTagCategoryCreateResponse409(
  errors: (json['errors'] as List<dynamic>).map((e) => PostTagCategoryCreateResponse409Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<PostTagCategoryCreateResponse409Errors> errors;

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
PostTagCategoryCreateResponse409 copyWith({List<PostTagCategoryCreateResponse409Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return PostTagCategoryCreateResponse409(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTagCategoryCreateResponse409 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'PostTagCategoryCreateResponse409(errors: $errors, result: $result, success: $success)'; } 
 }
