// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_proxy_endpoints.dart';@immutable final class ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection {const ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection({this.result});

factory ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayProxyEndpoints.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZeroTrustGatewayProxyEndpoints>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection copyWith({List<ZeroTrustGatewayProxyEndpoints> Function()? result}) { return ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointsComponentsSchemasResponseCollection(result: $result)'; } 
 }
