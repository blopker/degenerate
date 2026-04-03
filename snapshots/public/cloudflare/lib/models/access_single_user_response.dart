// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_users.dart';@immutable final class AccessSingleUserResponse {const AccessSingleUserResponse({this.result});

factory AccessSingleUserResponse.fromJson(Map<String, dynamic> json) { return AccessSingleUserResponse(
  result: json['result'] != null ? AccessSchemasUsers.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasUsers? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSingleUserResponse copyWith({AccessSchemasUsers Function()? result}) { return AccessSingleUserResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSingleUserResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessSingleUserResponse(result: $result)'; } 
 }
