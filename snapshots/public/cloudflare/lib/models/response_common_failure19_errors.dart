// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ResponseCommonFailure19Errors {const ResponseCommonFailure19Errors({this.code, this.message, });

factory ResponseCommonFailure19Errors.fromJson(Map<String, dynamic> json) { return ResponseCommonFailure19Errors(
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  message: json['message'] as String?,
); }

final int? code;

final String? message;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'message'}.contains(key)); } 
ResponseCommonFailure19Errors copyWith({int? Function()? code, String? Function()? message, }) { return ResponseCommonFailure19Errors(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommonFailure19Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'ResponseCommonFailure19Errors(code: $code, message: $message)'; } 
 }
