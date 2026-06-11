// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetLatestBuildsByScriptsResponseErrors {const GetLatestBuildsByScriptsResponseErrors({this.code, this.message, });

factory GetLatestBuildsByScriptsResponseErrors.fromJson(Map<String, dynamic> json) { return GetLatestBuildsByScriptsResponseErrors(
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
GetLatestBuildsByScriptsResponseErrors copyWith({int Function()? code, String Function()? message, }) { return GetLatestBuildsByScriptsResponseErrors(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetLatestBuildsByScriptsResponseErrors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'GetLatestBuildsByScriptsResponseErrors(code: $code, message: $message)'; } 
 }
