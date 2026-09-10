// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateBuildTokenResponseErrors {const CreateBuildTokenResponseErrors({this.code, this.message, });

factory CreateBuildTokenResponseErrors.fromJson(Map<String, dynamic> json) { return CreateBuildTokenResponseErrors(
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
CreateBuildTokenResponseErrors copyWith({int? Function()? code, String? Function()? message, }) { return CreateBuildTokenResponseErrors(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateBuildTokenResponseErrors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'CreateBuildTokenResponseErrors(code: $code, message: $message)'; } 
 }
