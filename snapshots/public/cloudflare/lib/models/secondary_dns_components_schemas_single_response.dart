// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_acl.dart';@immutable final class SecondaryDnsComponentsSchemasSingleResponse {const SecondaryDnsComponentsSchemasSingleResponse({this.result});

factory SecondaryDnsComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsComponentsSchemasSingleResponse(
  result: json['result'] != null ? SecondaryDnsAcl.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsAcl? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsComponentsSchemasSingleResponse copyWith({SecondaryDnsAcl Function()? result}) { return SecondaryDnsComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsComponentsSchemasSingleResponse(result: $result)'; } 
 }
