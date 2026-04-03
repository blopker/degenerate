// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_links_response_errors.dart';@immutable final class BrapiPostLinksResponse {const BrapiPostLinksResponse({required this.result, required this.success, this.errors, });

factory BrapiPostLinksResponse.fromJson(Map<String, dynamic> json) { return BrapiPostLinksResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostLinksResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => e as String).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostLinksResponseErrors>? errors;

final List<String> result;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
BrapiPostLinksResponse copyWith({List<BrapiPostLinksResponseErrors> Function()? errors, List<String>? result, bool? success, }) { return BrapiPostLinksResponse(
  errors: errors != null ? errors() : this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostLinksResponse &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(result), success); } 
@override String toString() { return 'BrapiPostLinksResponse(errors: $errors, result: $result, success: $success)'; } 
 }
