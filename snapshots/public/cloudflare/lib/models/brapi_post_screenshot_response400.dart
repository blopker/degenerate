// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_response400_errors.dart';final class BrapiPostScreenshotResponse400 {const BrapiPostScreenshotResponse400({this.errors, required this.success, });

factory BrapiPostScreenshotResponse400.fromJson(Map<String, dynamic> json) { return BrapiPostScreenshotResponse400(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostScreenshotResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostScreenshotResponse400Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostScreenshotResponse400 copyWith({List<BrapiPostScreenshotResponse400Errors> Function()? errors, bool? success, }) { return BrapiPostScreenshotResponse400(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScreenshotResponse400 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostScreenshotResponse400(errors: $errors, success: $success)'; } 
 }
