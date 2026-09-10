// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasEmptyResponse {const AccessSchemasEmptyResponse({this.result = const Omittable.absent(), this.success, });

factory AccessSchemasEmptyResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasEmptyResponse(
  result: json.containsKey('result') ? Omittable(json['result'] as Map<String, dynamic>?) : const Omittable.absent(),
  success: json['success'] as bool?,
); }

final Omittable<Map<String,dynamic>?> result;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (result.isPresent) 'result': result.value,
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'success'}.contains(key)); } 
AccessSchemasEmptyResponse copyWith({Omittable<Map<String,dynamic>?>? result, bool? Function()? success, }) { return AccessSchemasEmptyResponse(
  result: result ?? this.result,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasEmptyResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AccessSchemasEmptyResponse(result: $result, success: $success)'; } 
 }
