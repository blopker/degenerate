// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors {const WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors({required this.code, required this.message, });

factory WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors(
  code: json['code'] as String,
  message: json['message'] as String,
); }

final String code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is String &&
      json.containsKey('message') && json['message'] is String; } 
WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors copyWith({String? code, String? message, }) { return WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersAiPostRunCfMetaLlama38bInstructResponse400Errors(code: $code, message: $message)'; } 
 }
