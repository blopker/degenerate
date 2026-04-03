// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_response_response400_errors.dart';@immutable final class UrlscannerGetResponseResponse400 {const UrlscannerGetResponseResponse400({required this.errors, required this.message, required this.status, });

factory UrlscannerGetResponseResponse400.fromJson(Map<String, dynamic> json) { return UrlscannerGetResponseResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerGetResponseResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  message: json['message'] as String,
  status: (json['status'] as num).toInt(),
); }

final List<UrlscannerGetResponseResponse400Errors> errors;

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
UrlscannerGetResponseResponse400 copyWith({List<UrlscannerGetResponseResponse400Errors>? errors, String? message, int? status, }) { return UrlscannerGetResponseResponse400(
  errors: errors ?? this.errors,
  message: message ?? this.message,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetResponseResponse400 &&
          listEquals(errors, other.errors) &&
          message == other.message &&
          status == other.status; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), message, status); } 
@override String toString() { return 'UrlscannerGetResponseResponse400(errors: $errors, message: $message, status: $status)'; } 
 }
