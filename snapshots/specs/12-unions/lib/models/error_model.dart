// GENERATED CODE - DO NOT MODIFY BY HAND

final class ErrorModel {const ErrorModel({required this.code, required this.message, this.details, });

factory ErrorModel.fromJson(Map<String, dynamic> json) { return ErrorModel(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  details: json['details'] as String?,
); }

final int code;

final String message;

final String? details;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
  'details': ?details,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
ErrorModel copyWith({int? code, String? message, String Function()? details, }) { return ErrorModel(
  code: code ?? this.code,
  message: message ?? this.message,
  details: details != null ? details() : this.details,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ErrorModel &&
          code == other.code &&
          message == other.message &&
          details == other.details; } 
@override int get hashCode { return Object.hash(code, message, details); } 
@override String toString() { return 'ErrorModel(code: $code, message: $message, details: $details)'; } 
 }
