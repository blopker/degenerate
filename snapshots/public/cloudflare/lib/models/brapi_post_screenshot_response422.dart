// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_response422_errors.dart';final class BrapiPostScreenshotResponse422 {const BrapiPostScreenshotResponse422({this.errors, required this.success, });

factory BrapiPostScreenshotResponse422.fromJson(Map<String, dynamic> json) { return BrapiPostScreenshotResponse422(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostScreenshotResponse422Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostScreenshotResponse422Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostScreenshotResponse422 copyWith({List<BrapiPostScreenshotResponse422Errors> Function()? errors, bool? success, }) { return BrapiPostScreenshotResponse422(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScreenshotResponse422 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostScreenshotResponse422(errors: $errors, success: $success)'; } 
 }
