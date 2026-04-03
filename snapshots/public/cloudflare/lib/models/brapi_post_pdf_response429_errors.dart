// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostPdfResponse429Errors {const BrapiPostPdfResponse429Errors({required this.code, required this.message, });

factory BrapiPostPdfResponse429Errors.fromJson(Map<String, dynamic> json) { return BrapiPostPdfResponse429Errors(
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
BrapiPostPdfResponse429Errors copyWith({double? code, String? message, }) { return BrapiPostPdfResponse429Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostPdfResponse429Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'BrapiPostPdfResponse429Errors(code: $code, message: $message)'; } 
 }
