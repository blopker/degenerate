// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_instances_response404_errors.dart';final class AiSearchFetchInstancesResponse404 {const AiSearchFetchInstancesResponse404({required this.errors, required this.success, });

factory AiSearchFetchInstancesResponse404.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AiSearchFetchInstancesResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AiSearchFetchInstancesResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchFetchInstancesResponse404 copyWith({List<AiSearchFetchInstancesResponse404Errors>? errors, bool? success, }) { return AiSearchFetchInstancesResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AiSearchFetchInstancesResponse404(errors: $errors, success: $success)'; } 
 }
