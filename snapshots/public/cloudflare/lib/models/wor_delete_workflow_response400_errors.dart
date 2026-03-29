// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorDeleteWorkflowResponse400Errors {const WorDeleteWorkflowResponse400Errors({required this.code, required this.message, });

factory WorDeleteWorkflowResponse400Errors.fromJson(Map<String, dynamic> json) { return WorDeleteWorkflowResponse400Errors(
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
WorDeleteWorkflowResponse400Errors copyWith({double? code, String? message, }) { return WorDeleteWorkflowResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDeleteWorkflowResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorDeleteWorkflowResponse400Errors(code: $code, message: $message)'; } 
 }
