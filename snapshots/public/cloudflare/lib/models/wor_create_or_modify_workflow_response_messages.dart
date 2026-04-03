// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorCreateOrModifyWorkflowResponseMessages {const WorCreateOrModifyWorkflowResponseMessages({required this.code, required this.message, });

factory WorCreateOrModifyWorkflowResponseMessages.fromJson(Map<String, dynamic> json) { return WorCreateOrModifyWorkflowResponseMessages(
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
WorCreateOrModifyWorkflowResponseMessages copyWith({double? code, String? message, }) { return WorCreateOrModifyWorkflowResponseMessages(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorCreateOrModifyWorkflowResponseMessages &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorCreateOrModifyWorkflowResponseMessages(code: $code, message: $message)'; } 
 }
