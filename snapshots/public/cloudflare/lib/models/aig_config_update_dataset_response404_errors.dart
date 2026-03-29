// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateDatasetResponse404Errors {const AigConfigUpdateDatasetResponse404Errors({required this.code, required this.message, });

factory AigConfigUpdateDatasetResponse404Errors.fromJson(Map<String, dynamic> json) { return AigConfigUpdateDatasetResponse404Errors(
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
AigConfigUpdateDatasetResponse404Errors copyWith({double? code, String? message, }) { return AigConfigUpdateDatasetResponse404Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateDatasetResponse404Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'AigConfigUpdateDatasetResponse404Errors(code: $code, message: $message)'; } 
 }
