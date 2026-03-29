// GENERATED CODE - DO NOT MODIFY BY HAND

final class ErrorModel {const ErrorModel({required this.code, required this.message, });

factory ErrorModel.fromJson(Map<String, dynamic> json) { return ErrorModel(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
); }

final int code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
ErrorModel copyWith({int? code, String? message, }) { return ErrorModel(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ErrorModel &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'ErrorModel(code: $code, message: $message)'; } 
 }
