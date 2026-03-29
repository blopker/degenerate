// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors {const WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors({required this.code, required this.message, });

factory WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors(
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
WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors copyWith({String? code, String? message, }) { return WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersAiPostRunCfLeonardoLucidOriginResponse400Errors(code: $code, message: $message)'; } 
 }
