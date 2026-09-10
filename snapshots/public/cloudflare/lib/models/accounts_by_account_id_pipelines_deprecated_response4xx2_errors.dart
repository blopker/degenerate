// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors {const AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors({required this.code, required this.message, });

factory AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
); }

final double code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors copyWith({double? code, String? message, }) { return AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedResponse4xx2Errors(code: $code, message: $message)'; } 
 }
