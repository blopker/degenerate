// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_proxy_endpoint_identity.dart';import 'zero_trust_gateway_proxy_endpoint_ip.dart';sealed class ZeroTrustGatewayProxyEndpoints {const ZeroTrustGatewayProxyEndpoints();

/// Deserialize from JSON, dispatching on the `kind` discriminator.
factory ZeroTrustGatewayProxyEndpoints.fromJson(Map<String, dynamic> json) { return switch (json['kind']) {
  'identity' => ZeroTrustGatewayProxyEndpointsIdentity.fromJson(json),
  'ip' => ZeroTrustGatewayProxyEndpointsIp.fromJson(json),
  _ => ZeroTrustGatewayProxyEndpoints$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get kind;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ZeroTrustGatewayProxyEndpoints$Unknown; } 
 }
@immutable final class ZeroTrustGatewayProxyEndpointsIdentity extends ZeroTrustGatewayProxyEndpoints {const ZeroTrustGatewayProxyEndpointsIdentity(this.zeroTrustGatewayProxyEndpointIdentity);

factory ZeroTrustGatewayProxyEndpointsIdentity.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProxyEndpointsIdentity(ZeroTrustGatewayProxyEndpointIdentity.fromJson(json)); }

final ZeroTrustGatewayProxyEndpointIdentity zeroTrustGatewayProxyEndpointIdentity;

@override String get kind { return 'identity'; } 
@override Map<String, dynamic> toJson() { return {...zeroTrustGatewayProxyEndpointIdentity.toJson(), 'kind': kind}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewayProxyEndpointsIdentity && zeroTrustGatewayProxyEndpointIdentity == other.zeroTrustGatewayProxyEndpointIdentity; } 
@override int get hashCode { return zeroTrustGatewayProxyEndpointIdentity.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointsIdentity(zeroTrustGatewayProxyEndpointIdentity: $zeroTrustGatewayProxyEndpointIdentity)'; } 
 }
@immutable final class ZeroTrustGatewayProxyEndpointsIp extends ZeroTrustGatewayProxyEndpoints {const ZeroTrustGatewayProxyEndpointsIp(this.zeroTrustGatewayProxyEndpointIp);

factory ZeroTrustGatewayProxyEndpointsIp.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProxyEndpointsIp(ZeroTrustGatewayProxyEndpointIp.fromJson(json)); }

final ZeroTrustGatewayProxyEndpointIp zeroTrustGatewayProxyEndpointIp;

@override String get kind { return 'ip'; } 
@override Map<String, dynamic> toJson() { return {...zeroTrustGatewayProxyEndpointIp.toJson(), 'kind': kind}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewayProxyEndpointsIp && zeroTrustGatewayProxyEndpointIp == other.zeroTrustGatewayProxyEndpointIp; } 
@override int get hashCode { return zeroTrustGatewayProxyEndpointIp.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointsIp(zeroTrustGatewayProxyEndpointIp: $zeroTrustGatewayProxyEndpointIp)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ZeroTrustGatewayProxyEndpoints$Unknown extends ZeroTrustGatewayProxyEndpoints {const ZeroTrustGatewayProxyEndpoints$Unknown(this.json);

final Map<String, dynamic> json;

@override String get kind { return json['kind'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewayProxyEndpoints$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpoints.unknown($json)'; } 
 }
