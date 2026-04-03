// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_tag_category_update_response409_errors.dart';@immutable final class PatchTagCategoryUpdateResponse409 {const PatchTagCategoryUpdateResponse409({required this.errors, required this.result, required this.success, });

factory PatchTagCategoryUpdateResponse409.fromJson(Map<String, dynamic> json) { return PatchTagCategoryUpdateResponse409(
  errors: (json['errors'] as List<dynamic>).map((e) => PatchTagCategoryUpdateResponse409Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<PatchTagCategoryUpdateResponse409Errors> errors;

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
PatchTagCategoryUpdateResponse409 copyWith({List<PatchTagCategoryUpdateResponse409Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return PatchTagCategoryUpdateResponse409(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchTagCategoryUpdateResponse409 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'PatchTagCategoryUpdateResponse409(errors: $errors, result: $result, success: $success)'; } 
 }
