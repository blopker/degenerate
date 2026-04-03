// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_response500_errors.dart';@immutable final class BrapiPostScreenshotResponse500 {const BrapiPostScreenshotResponse500({required this.success, this.errors, });

factory BrapiPostScreenshotResponse500.fromJson(Map<String, dynamic> json) { return BrapiPostScreenshotResponse500(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostScreenshotResponse500Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostScreenshotResponse500Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostScreenshotResponse500 copyWith({List<BrapiPostScreenshotResponse500Errors> Function()? errors, bool? success, }) { return BrapiPostScreenshotResponse500(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScreenshotResponse500 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostScreenshotResponse500(errors: $errors, success: $success)'; } 
 }
