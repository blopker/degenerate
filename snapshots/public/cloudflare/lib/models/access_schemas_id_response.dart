// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_id_response_result.dart';final class AccessSchemasIdResponse {const AccessSchemasIdResponse({this.result});

factory AccessSchemasIdResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasIdResponse(
  result: json['result'] != null ? AccessSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSchemasIdResponse copyWith({AccessSchemasIdResponseResult Function()? result}) { return AccessSchemasIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessSchemasIdResponse(result: $result)'; } 
 }
