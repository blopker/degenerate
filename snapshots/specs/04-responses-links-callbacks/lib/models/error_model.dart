// GENERATED CODE - DO NOT MODIFY BY HAND

final class ErrorModel {const ErrorModel({this.code, this.message, });

factory ErrorModel.fromJson(Map<String, dynamic> json) { return ErrorModel(
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  message: json['message'] as String?,
); }

final int? code;

final String? message;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ErrorModel copyWith({int Function()? code, String Function()? message, }) { return ErrorModel(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ErrorModel &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'ErrorModel(code: $code, message: $message)'; } 
 }
