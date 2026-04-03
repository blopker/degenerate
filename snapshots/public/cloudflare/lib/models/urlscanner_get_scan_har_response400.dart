// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_har_response400_errors.dart';import 'urlscanner_get_scan_har_response400_messages.dart';@immutable final class UrlscannerGetScanHarResponse400 {const UrlscannerGetScanHarResponse400({required this.errors, required this.messages, required this.success, });

factory UrlscannerGetScanHarResponse400.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerGetScanHarResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => UrlscannerGetScanHarResponse400Messages.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<UrlscannerGetScanHarResponse400Errors> errors;

final List<UrlscannerGetScanHarResponse400Messages> messages;

/// Whether request was successful or not
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
UrlscannerGetScanHarResponse400 copyWith({List<UrlscannerGetScanHarResponse400Errors>? errors, List<UrlscannerGetScanHarResponse400Messages>? messages, bool? success, }) { return UrlscannerGetScanHarResponse400(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponse400 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'UrlscannerGetScanHarResponse400(errors: $errors, messages: $messages, success: $success)'; } 
 }
