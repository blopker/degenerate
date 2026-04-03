// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BatchErrorsData {const BatchErrorsData({this.code, this.message, this.param, this.line, });

factory BatchErrorsData.fromJson(Map<String, dynamic> json) { return BatchErrorsData(
  code: json['code'] as String?,
  message: json['message'] as String?,
  param: json['param'] as String?,
  line: json['line'] != null ? (json['line'] as num).toInt() : null,
); }

/// An error code identifying the error type.
final String? code;

/// A human-readable message providing more details about the error.
final String? message;

/// The name of the parameter that caused the error, if applicable.
final String? param;

/// The line number of the input file where the error occurred, if applicable.
final int? line;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': ?message,
  'param': ?param,
  'line': ?line,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'message', 'param', 'line'}.contains(key)); } 
BatchErrorsData copyWith({String Function()? code, String Function()? message, String? Function()? param, int? Function()? line, }) { return BatchErrorsData(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
  param: param != null ? param() : this.param,
  line: line != null ? line() : this.line,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BatchErrorsData &&
          code == other.code &&
          message == other.message &&
          param == other.param &&
          line == other.line; } 
@override int get hashCode { return Object.hash(code, message, param, line); } 
@override String toString() { return 'BatchErrorsData(code: $code, message: $message, param: $param, line: $line)'; } 
 }
