// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListEnvironmentVariablesResponseErrors {const ListEnvironmentVariablesResponseErrors({this.code, this.message, });

factory ListEnvironmentVariablesResponseErrors.fromJson(Map<String, dynamic> json) { return ListEnvironmentVariablesResponseErrors(
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
ListEnvironmentVariablesResponseErrors copyWith({int? Function()? code, String? Function()? message, }) { return ListEnvironmentVariablesResponseErrors(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListEnvironmentVariablesResponseErrors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'ListEnvironmentVariablesResponseErrors(code: $code, message: $message)'; } 
 }
