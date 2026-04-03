// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_proxy_endpoints.dart';@immutable final class ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse {const ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse({this.result});

factory ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse(
  result: json['result'] != null ? ZeroTrustGatewayProxyEndpoints.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayProxyEndpoints? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse copyWith({ZeroTrustGatewayProxyEndpoints Function()? result}) { return ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointsComponentsSchemasSingleResponse(result: $result)'; } 
 }
