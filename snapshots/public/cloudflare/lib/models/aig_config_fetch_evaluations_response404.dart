// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_fetch_evaluations_response404_errors.dart';@immutable final class AigConfigFetchEvaluationsResponse404 {const AigConfigFetchEvaluationsResponse404({required this.errors, required this.success, });

factory AigConfigFetchEvaluationsResponse404.fromJson(Map<String, dynamic> json) { return AigConfigFetchEvaluationsResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AigConfigFetchEvaluationsResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigFetchEvaluationsResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigFetchEvaluationsResponse404 copyWith({List<AigConfigFetchEvaluationsResponse404Errors>? errors, bool? success, }) { return AigConfigFetchEvaluationsResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigFetchEvaluationsResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AigConfigFetchEvaluationsResponse404(errors: $errors, success: $success)'; } 
 }
