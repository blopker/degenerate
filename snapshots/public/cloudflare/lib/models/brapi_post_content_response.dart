// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_content_response_errors.dart';import 'brapi_post_content_response_meta.dart';@immutable final class BrapiPostContentResponse {const BrapiPostContentResponse({required this.meta, required this.success, this.errors, this.result, });

factory BrapiPostContentResponse.fromJson(Map<String, dynamic> json) { return BrapiPostContentResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostContentResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  meta: BrapiPostContentResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
  result: json['result'] as String?,
  success: json['success'] as bool,
); }

final List<BrapiPostContentResponseErrors>? errors;

final BrapiPostContentResponseMeta meta;

/// HTML content
final String? result;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'meta': meta.toJson(),
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('success') && json['success'] is bool; } 
BrapiPostContentResponse copyWith({List<BrapiPostContentResponseErrors> Function()? errors, BrapiPostContentResponseMeta? meta, String Function()? result, bool? success, }) { return BrapiPostContentResponse(
  errors: errors != null ? errors() : this.errors,
  meta: meta ?? this.meta,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostContentResponse &&
          listEquals(errors, other.errors) &&
          meta == other.meta &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), meta, result, success); } 
@override String toString() { return 'BrapiPostContentResponse(errors: $errors, meta: $meta, result: $result, success: $success)'; } 
 }
