// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_ca_components_schemas_id_response_result.dart';@immutable final class AccessCaComponentsSchemasIdResponse {const AccessCaComponentsSchemasIdResponse({this.result});

factory AccessCaComponentsSchemasIdResponse.fromJson(Map<String, dynamic> json) { return AccessCaComponentsSchemasIdResponse(
  result: json['result'] != null ? AccessCaComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessCaComponentsSchemasIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCaComponentsSchemasIdResponse copyWith({AccessCaComponentsSchemasIdResponseResult Function()? result}) { return AccessCaComponentsSchemasIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCaComponentsSchemasIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessCaComponentsSchemasIdResponse(result: $result)'; } 
 }
