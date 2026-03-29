// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_event_query_alert_update_response404_errors.dart';final class PatchEventQueryAlertUpdateResponse404 {const PatchEventQueryAlertUpdateResponse404({required this.errors, required this.result, required this.success, });

factory PatchEventQueryAlertUpdateResponse404.fromJson(Map<String, dynamic> json) { return PatchEventQueryAlertUpdateResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => PatchEventQueryAlertUpdateResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<PatchEventQueryAlertUpdateResponse404Errors> errors;

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
PatchEventQueryAlertUpdateResponse404 copyWith({List<PatchEventQueryAlertUpdateResponse404Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return PatchEventQueryAlertUpdateResponse404(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchEventQueryAlertUpdateResponse404 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'PatchEventQueryAlertUpdateResponse404(errors: $errors, result: $result, success: $success)'; } 
 }
