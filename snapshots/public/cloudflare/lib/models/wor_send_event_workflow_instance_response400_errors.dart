// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorSendEventWorkflowInstanceResponse400Errors {const WorSendEventWorkflowInstanceResponse400Errors({required this.code, required this.message, });

factory WorSendEventWorkflowInstanceResponse400Errors.fromJson(Map<String, dynamic> json) { return WorSendEventWorkflowInstanceResponse400Errors(
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
WorSendEventWorkflowInstanceResponse400Errors copyWith({double? code, String? message, }) { return WorSendEventWorkflowInstanceResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorSendEventWorkflowInstanceResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorSendEventWorkflowInstanceResponse400Errors(code: $code, message: $message)'; } 
 }
