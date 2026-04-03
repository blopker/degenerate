// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors {const WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors({required this.code, required this.message, });

factory WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors(
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
WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors copyWith({String? code, String? message, }) { return WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersAiPostRunCfBaaiOmniBgeM3Response400Errors(code: $code, message: $message)'; } 
 }
