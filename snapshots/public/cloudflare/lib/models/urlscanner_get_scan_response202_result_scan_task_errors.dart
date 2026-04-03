// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanResponse202ResultScanTaskErrors {const UrlscannerGetScanResponse202ResultScanTaskErrors({required this.message});

factory UrlscannerGetScanResponse202ResultScanTaskErrors.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse202ResultScanTaskErrors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerGetScanResponse202ResultScanTaskErrors copyWith({String? message}) { return UrlscannerGetScanResponse202ResultScanTaskErrors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse202ResultScanTaskErrors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse202ResultScanTaskErrors(message: $message)'; } 
 }
