// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response4002_errors.dart';@immutable final class UrlscannerGetScanResponse4002 {const UrlscannerGetScanResponse4002({required this.errors, required this.message, required this.status, });

factory UrlscannerGetScanResponse4002.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse4002(
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerGetScanResponse4002Errors.fromJson(e as Map<String, dynamic>)).toList(),
  message: json['message'] as String,
  status: (json['status'] as num).toInt(),
); }

final List<UrlscannerGetScanResponse4002Errors> errors;

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
UrlscannerGetScanResponse4002 copyWith({List<UrlscannerGetScanResponse4002Errors>? errors, String? message, int? status, }) { return UrlscannerGetScanResponse4002(
  errors: errors ?? this.errors,
  message: message ?? this.message,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse4002 &&
          listEquals(errors, other.errors) &&
          message == other.message &&
          status == other.status; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), message, status); } 
@override String toString() { return 'UrlscannerGetScanResponse4002(errors: $errors, message: $message, status: $status)'; } 
 }
