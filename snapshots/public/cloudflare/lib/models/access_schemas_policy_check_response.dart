// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_policy_check_response_result.dart';final class AccessSchemasPolicyCheckResponse {const AccessSchemasPolicyCheckResponse({this.result});

factory AccessSchemasPolicyCheckResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasPolicyCheckResponse(
  result: json['result'] != null ? AccessSchemasPolicyCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasPolicyCheckResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSchemasPolicyCheckResponse copyWith({AccessSchemasPolicyCheckResponseResult Function()? result}) { return AccessSchemasPolicyCheckResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasPolicyCheckResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessSchemasPolicyCheckResponse(result: $result)'; } 
 }
