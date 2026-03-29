// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_screenshot_response4002_errors.dart';final class UrlscannerGetScanScreenshotResponse4002 {const UrlscannerGetScanScreenshotResponse4002({required this.errors, required this.message, required this.status, });

factory UrlscannerGetScanScreenshotResponse4002.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanScreenshotResponse4002(
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerGetScanScreenshotResponse4002Errors.fromJson(e as Map<String, dynamic>)).toList(),
  message: json['message'] as String,
  status: (json['status'] as num).toInt(),
); }

final List<UrlscannerGetScanScreenshotResponse4002Errors> errors;

final String message;

/// Status code.
final int status;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'message': message,
  'status': status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('status') && json['status'] is num; } 
UrlscannerGetScanScreenshotResponse4002 copyWith({List<UrlscannerGetScanScreenshotResponse4002Errors>? errors, String? message, int? status, }) { return UrlscannerGetScanScreenshotResponse4002(
  errors: errors ?? this.errors,
  message: message ?? this.message,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanScreenshotResponse4002 &&
          listEquals(errors, other.errors) &&
          message == other.message &&
          status == other.status; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), message, status); } 
@override String toString() { return 'UrlscannerGetScanScreenshotResponse4002(errors: $errors, message: $message, status: $status)'; } 
 }
