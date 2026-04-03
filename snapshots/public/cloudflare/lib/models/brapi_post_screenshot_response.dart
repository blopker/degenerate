// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_response_errors.dart';@immutable final class BrapiPostScreenshotResponse {const BrapiPostScreenshotResponse({required this.success, this.errors, });

factory BrapiPostScreenshotResponse.fromJson(Map<String, dynamic> json) { return BrapiPostScreenshotResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostScreenshotResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostScreenshotResponseErrors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostScreenshotResponse copyWith({List<BrapiPostScreenshotResponseErrors> Function()? errors, bool? success, }) { return BrapiPostScreenshotResponse(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScreenshotResponse &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostScreenshotResponse(errors: $errors, success: $success)'; } 
 }
