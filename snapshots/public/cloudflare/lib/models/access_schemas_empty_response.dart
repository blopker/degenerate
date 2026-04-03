// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasEmptyResponse {const AccessSchemasEmptyResponse({this.result, this.success, });

factory AccessSchemasEmptyResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasEmptyResponse(
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool?,
); }

final Map<String,dynamic>? result;

final bool? success;

Map<String, dynamic> toJson() { return {
  'result': ?result,
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'success'}.contains(key)); } 
AccessSchemasEmptyResponse copyWith({Map<String, dynamic>? Function()? result, bool Function()? success, }) { return AccessSchemasEmptyResponse(
  result: result != null ? result() : this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasEmptyResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AccessSchemasEmptyResponse(result: $result, success: $success)'; } 
 }
