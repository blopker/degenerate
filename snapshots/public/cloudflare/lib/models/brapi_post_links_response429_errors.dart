// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostLinksResponse429Errors {const BrapiPostLinksResponse429Errors({required this.code, required this.message, });

factory BrapiPostLinksResponse429Errors.fromJson(Map<String, dynamic> json) { return BrapiPostLinksResponse429Errors(
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
BrapiPostLinksResponse429Errors copyWith({double? code, String? message, }) { return BrapiPostLinksResponse429Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostLinksResponse429Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'BrapiPostLinksResponse429Errors(code: $code, message: $message)'; } 
 }
