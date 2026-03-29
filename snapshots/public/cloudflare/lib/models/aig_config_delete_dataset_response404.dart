// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_delete_dataset_response404_errors.dart';final class AigConfigDeleteDatasetResponse404 {const AigConfigDeleteDatasetResponse404({required this.errors, required this.success, });

factory AigConfigDeleteDatasetResponse404.fromJson(Map<String, dynamic> json) { return AigConfigDeleteDatasetResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AigConfigDeleteDatasetResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigDeleteDatasetResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigDeleteDatasetResponse404 copyWith({List<AigConfigDeleteDatasetResponse404Errors>? errors, bool? success, }) { return AigConfigDeleteDatasetResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteDatasetResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AigConfigDeleteDatasetResponse404(errors: $errors, success: $success)'; } 
 }
