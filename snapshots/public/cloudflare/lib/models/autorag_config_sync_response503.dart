// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_sync_response503_errors.dart';@immutable final class AutoragConfigSyncResponse503 {const AutoragConfigSyncResponse503({required this.errors, required this.success, });

factory AutoragConfigSyncResponse503.fromJson(Map<String, dynamic> json) { return AutoragConfigSyncResponse503(
  errors: (json['errors'] as List<dynamic>).map((e) => AutoragConfigSyncResponse503Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AutoragConfigSyncResponse503Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AutoragConfigSyncResponse503 copyWith({List<AutoragConfigSyncResponse503Errors>? errors, bool? success, }) { return AutoragConfigSyncResponse503(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigSyncResponse503 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AutoragConfigSyncResponse503(errors: $errors, success: $success)'; } 
 }
