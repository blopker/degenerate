// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_stats_response404_errors.dart';@immutable final class AiSearchStatsResponse404 {const AiSearchStatsResponse404({required this.errors, required this.success, });

factory AiSearchStatsResponse404.fromJson(Map<String, dynamic> json) { return AiSearchStatsResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AiSearchStatsResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AiSearchStatsResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchStatsResponse404 copyWith({List<AiSearchStatsResponse404Errors>? errors, bool? success, }) { return AiSearchStatsResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchStatsResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AiSearchStatsResponse404(errors: $errors, success: $success)'; } 
 }
