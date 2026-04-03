// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Object containing details of the error that occurred
@immutable final class RealtimekitErrorResponseError {const RealtimekitErrorResponseError({required this.code, required this.message, });

factory RealtimekitErrorResponseError.fromJson(Map<String, dynamic> json) { return RealtimekitErrorResponseError(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
); }

/// Error code
final double code;

/// Error message
final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
RealtimekitErrorResponseError copyWith({double? code, String? message, }) { return RealtimekitErrorResponseError(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitErrorResponseError &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'RealtimekitErrorResponseError(code: $code, message: $message)'; } 
 }
