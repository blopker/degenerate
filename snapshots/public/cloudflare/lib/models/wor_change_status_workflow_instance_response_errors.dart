// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorChangeStatusWorkflowInstanceResponseErrors {const WorChangeStatusWorkflowInstanceResponseErrors({required this.code, required this.message, });

factory WorChangeStatusWorkflowInstanceResponseErrors.fromJson(Map<String, dynamic> json) { return WorChangeStatusWorkflowInstanceResponseErrors(
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
WorChangeStatusWorkflowInstanceResponseErrors copyWith({double? code, String? message, }) { return WorChangeStatusWorkflowInstanceResponseErrors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorChangeStatusWorkflowInstanceResponseErrors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceResponseErrors(code: $code, message: $message)'; } 
 }
