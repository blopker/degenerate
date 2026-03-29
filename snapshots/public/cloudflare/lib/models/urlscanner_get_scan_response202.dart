// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response202_errors.dart';import 'urlscanner_get_scan_response202_messages.dart';import 'urlscanner_get_scan_response202_result.dart';final class UrlscannerGetScanResponse202 {const UrlscannerGetScanResponse202({required this.errors, required this.messages, required this.result, required this.success, });

factory UrlscannerGetScanResponse202.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse202(
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerGetScanResponse202Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => UrlscannerGetScanResponse202Messages.fromJson(e as Map<String, dynamic>)).toList(),
  result: UrlscannerGetScanResponse202Result.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<UrlscannerGetScanResponse202Errors> errors;

final List<UrlscannerGetScanResponse202Messages> messages;

final UrlscannerGetScanResponse202Result result;

/// Whether request was successful or not
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
UrlscannerGetScanResponse202 copyWith({List<UrlscannerGetScanResponse202Errors>? errors, List<UrlscannerGetScanResponse202Messages>? messages, UrlscannerGetScanResponse202Result? result, bool? success, }) { return UrlscannerGetScanResponse202(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse202 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'UrlscannerGetScanResponse202(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
