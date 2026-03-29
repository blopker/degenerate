// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorDescribeWorkflowVersionsResponse400Errors {const WorDescribeWorkflowVersionsResponse400Errors({required this.code, required this.message, });

factory WorDescribeWorkflowVersionsResponse400Errors.fromJson(Map<String, dynamic> json) { return WorDescribeWorkflowVersionsResponse400Errors(
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
WorDescribeWorkflowVersionsResponse400Errors copyWith({double? code, String? message, }) { return WorDescribeWorkflowVersionsResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDescribeWorkflowVersionsResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorDescribeWorkflowVersionsResponse400Errors(code: $code, message: $message)'; } 
 }
