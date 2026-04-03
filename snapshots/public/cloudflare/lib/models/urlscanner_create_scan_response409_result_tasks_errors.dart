// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerCreateScanResponse409ResultTasksErrors {const UrlscannerCreateScanResponse409ResultTasksErrors({required this.message});

factory UrlscannerCreateScanResponse409ResultTasksErrors.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanResponse409ResultTasksErrors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerCreateScanResponse409ResultTasksErrors copyWith({String? message}) { return UrlscannerCreateScanResponse409ResultTasksErrors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanResponse409ResultTasksErrors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanResponse409ResultTasksErrors(message: $message)'; } 
 }
