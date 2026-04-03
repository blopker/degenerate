// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_id_response_result.dart';@immutable final class SecondaryDnsIdResponse {const SecondaryDnsIdResponse({this.result});

factory SecondaryDnsIdResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsIdResponse(
  result: json['result'] != null ? SecondaryDnsIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsIdResponse copyWith({SecondaryDnsIdResponseResult Function()? result}) { return SecondaryDnsIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsIdResponse(result: $result)'; } 
 }
