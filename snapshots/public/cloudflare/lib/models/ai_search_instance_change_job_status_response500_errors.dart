// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchInstanceChangeJobStatusResponse500Errors {const AiSearchInstanceChangeJobStatusResponse500Errors({required this.code, required this.message, });

factory AiSearchInstanceChangeJobStatusResponse500Errors.fromJson(Map<String, dynamic> json) { return AiSearchInstanceChangeJobStatusResponse500Errors(
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
AiSearchInstanceChangeJobStatusResponse500Errors copyWith({double? code, String? message, }) { return AiSearchInstanceChangeJobStatusResponse500Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceChangeJobStatusResponse500Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'AiSearchInstanceChangeJobStatusResponse500Errors(code: $code, message: $message)'; } 
 }
