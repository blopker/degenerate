// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secondary_dns_schemas_id_response_result.dart';final class SecondaryDnsSchemasIdResponse {const SecondaryDnsSchemasIdResponse({this.result});

factory SecondaryDnsSchemasIdResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsSchemasIdResponse(
  result: json['result'] != null ? SecondaryDnsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsSchemasIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsSchemasIdResponse copyWith({SecondaryDnsSchemasIdResponseResult Function()? result}) { return SecondaryDnsSchemasIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSchemasIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsSchemasIdResponse(result: $result)'; } 
 }
