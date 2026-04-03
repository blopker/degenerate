// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_ai_search_response404_errors.dart';@immutable final class AutoragConfigAiSearchResponse404 {const AutoragConfigAiSearchResponse404({required this.errors, required this.success, });

factory AutoragConfigAiSearchResponse404.fromJson(Map<String, dynamic> json) { return AutoragConfigAiSearchResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AutoragConfigAiSearchResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AutoragConfigAiSearchResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AutoragConfigAiSearchResponse404 copyWith({List<AutoragConfigAiSearchResponse404Errors>? errors, bool? success, }) { return AutoragConfigAiSearchResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigAiSearchResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AutoragConfigAiSearchResponse404(errors: $errors, success: $success)'; } 
 }
