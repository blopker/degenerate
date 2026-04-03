// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_delete_instances_response404_errors.dart';@immutable final class AiSearchDeleteInstancesResponse404 {const AiSearchDeleteInstancesResponse404({required this.errors, required this.success, });

factory AiSearchDeleteInstancesResponse404.fromJson(Map<String, dynamic> json) { return AiSearchDeleteInstancesResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AiSearchDeleteInstancesResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AiSearchDeleteInstancesResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchDeleteInstancesResponse404 copyWith({List<AiSearchDeleteInstancesResponse404Errors>? errors, bool? success, }) { return AiSearchDeleteInstancesResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteInstancesResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AiSearchDeleteInstancesResponse404(errors: $errors, success: $success)'; } 
 }
