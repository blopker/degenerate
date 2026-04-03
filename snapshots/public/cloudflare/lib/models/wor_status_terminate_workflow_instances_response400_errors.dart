// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorStatusTerminateWorkflowInstancesResponse400Errors {const WorStatusTerminateWorkflowInstancesResponse400Errors({required this.code, required this.message, });

factory WorStatusTerminateWorkflowInstancesResponse400Errors.fromJson(Map<String, dynamic> json) { return WorStatusTerminateWorkflowInstancesResponse400Errors(
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
WorStatusTerminateWorkflowInstancesResponse400Errors copyWith({double? code, String? message, }) { return WorStatusTerminateWorkflowInstancesResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorStatusTerminateWorkflowInstancesResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorStatusTerminateWorkflowInstancesResponse400Errors(code: $code, message: $message)'; } 
 }
