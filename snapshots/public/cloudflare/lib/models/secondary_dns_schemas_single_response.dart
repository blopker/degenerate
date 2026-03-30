// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secondary_dns_peer.dart';final class SecondaryDnsSchemasSingleResponse {const SecondaryDnsSchemasSingleResponse({this.result});

factory SecondaryDnsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsSchemasSingleResponse(
  result: json['result'] != null ? SecondaryDnsPeer.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsPeer? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsSchemasSingleResponse copyWith({SecondaryDnsPeer Function()? result}) { return SecondaryDnsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsSchemasSingleResponse(result: $result)'; } 
 }
