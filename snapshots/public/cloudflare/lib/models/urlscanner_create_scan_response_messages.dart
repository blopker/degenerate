// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerCreateScanResponseMessages {const UrlscannerCreateScanResponseMessages({required this.message});

factory UrlscannerCreateScanResponseMessages.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanResponseMessages(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
UrlscannerCreateScanResponseMessages copyWith({String? message}) { return UrlscannerCreateScanResponseMessages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanResponseMessages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanResponseMessages(message: $message)'; } 
 }
