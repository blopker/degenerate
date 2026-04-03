// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostPdfResponse500Errors {const BrapiPostPdfResponse500Errors({required this.code, required this.message, });

factory BrapiPostPdfResponse500Errors.fromJson(Map<String, dynamic> json) { return BrapiPostPdfResponse500Errors(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
); }

/// Error code
final double code;

/// Error Message
final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
BrapiPostPdfResponse500Errors copyWith({double? code, String? message, }) { return BrapiPostPdfResponse500Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostPdfResponse500Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'BrapiPostPdfResponse500Errors(code: $code, message: $message)'; } 
 }
