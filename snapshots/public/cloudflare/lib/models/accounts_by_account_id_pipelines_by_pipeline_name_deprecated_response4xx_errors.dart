// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors({required this.code, required this.message, });

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors(
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
AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors copyWith({double? code, String? message, }) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedResponse4xxErrors(code: $code, message: $message)'; } 
 }
