// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_rules.dart';final class ZeroTrustGatewayComponentsSchemasSingleResponse {const ZeroTrustGatewayComponentsSchemasSingleResponse({this.result});

factory ZeroTrustGatewayComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayComponentsSchemasSingleResponse(
  result: json['result'] != null ? ZeroTrustGatewayRules.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayRules? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayComponentsSchemasSingleResponse copyWith({ZeroTrustGatewayRules Function()? result}) { return ZeroTrustGatewayComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayComponentsSchemasSingleResponse(result: $result)'; } 
 }
