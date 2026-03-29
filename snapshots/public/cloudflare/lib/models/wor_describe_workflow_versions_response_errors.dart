// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorDescribeWorkflowVersionsResponseErrors {const WorDescribeWorkflowVersionsResponseErrors({required this.code, required this.message, });

factory WorDescribeWorkflowVersionsResponseErrors.fromJson(Map<String, dynamic> json) { return WorDescribeWorkflowVersionsResponseErrors(
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
WorDescribeWorkflowVersionsResponseErrors copyWith({double? code, String? message, }) { return WorDescribeWorkflowVersionsResponseErrors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDescribeWorkflowVersionsResponseErrors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorDescribeWorkflowVersionsResponseErrors(code: $code, message: $message)'; } 
 }
