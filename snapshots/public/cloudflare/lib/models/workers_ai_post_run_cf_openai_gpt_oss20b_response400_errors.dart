// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors {const WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors({required this.code, required this.message, });

factory WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors(
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
WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors copyWith({String? code, String? message, }) { return WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersAiPostRunCfOpenaiGptOss20bResponse400Errors(code: $code, message: $message)'; } 
 }
