// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secondary_dns_components_schemas_id_response_result.dart';final class SecondaryDnsComponentsSchemasIdResponse {const SecondaryDnsComponentsSchemasIdResponse({this.result});

factory SecondaryDnsComponentsSchemasIdResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsComponentsSchemasIdResponse(
  result: json['result'] != null ? SecondaryDnsComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsComponentsSchemasIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsComponentsSchemasIdResponse copyWith({SecondaryDnsComponentsSchemasIdResponseResult Function()? result}) { return SecondaryDnsComponentsSchemasIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsComponentsSchemasIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsComponentsSchemasIdResponse(result: $result)'; } 
 }
