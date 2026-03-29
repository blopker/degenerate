// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_tokens_response400_errors.dart';final class AiSearchUpdateTokensResponse400 {const AiSearchUpdateTokensResponse400({required this.errors, required this.success, });

factory AiSearchUpdateTokensResponse400.fromJson(Map<String, dynamic> json) { return AiSearchUpdateTokensResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => AiSearchUpdateTokensResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AiSearchUpdateTokensResponse400Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AiSearchUpdateTokensResponse400 copyWith({List<AiSearchUpdateTokensResponse400Errors>? errors, bool? success, }) { return AiSearchUpdateTokensResponse400(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateTokensResponse400 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AiSearchUpdateTokensResponse400(errors: $errors, success: $success)'; } 
 }
