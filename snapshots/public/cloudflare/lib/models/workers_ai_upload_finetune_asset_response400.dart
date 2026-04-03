// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersAiUploadFinetuneAssetResponse400 {const WorkersAiUploadFinetuneAssetResponse400({required this.errors, required this.success, });

factory WorkersAiUploadFinetuneAssetResponse400.fromJson(Map<String, dynamic> json) { return WorkersAiUploadFinetuneAssetResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  success: json['success'] as bool,
); }

final List<Map<String,dynamic>> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
WorkersAiUploadFinetuneAssetResponse400 copyWith({List<Map<String,dynamic>>? errors, bool? success, }) { return WorkersAiUploadFinetuneAssetResponse400(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiUploadFinetuneAssetResponse400 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'WorkersAiUploadFinetuneAssetResponse400(errors: $errors, success: $success)'; } 
 }
