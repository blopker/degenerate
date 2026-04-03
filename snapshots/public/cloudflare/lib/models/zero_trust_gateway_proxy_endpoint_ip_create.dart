// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_proxy_endpoints_components_schemas_name.dart';/// The proxy endpoint kind
@immutable final class ZeroTrustGatewayProxyEndpointIpCreateKind {const ZeroTrustGatewayProxyEndpointIpCreateKind._(this.value);

factory ZeroTrustGatewayProxyEndpointIpCreateKind.fromJson(String json) { return switch (json) {
  'ip' => ip,
  _ => ZeroTrustGatewayProxyEndpointIpCreateKind._(json),
}; }

static const ZeroTrustGatewayProxyEndpointIpCreateKind ip = ZeroTrustGatewayProxyEndpointIpCreateKind._('ip');

static const List<ZeroTrustGatewayProxyEndpointIpCreateKind> values = [ip];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewayProxyEndpointIpCreateKind && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointIpCreateKind($value)'; } 
 }
@immutable final class ZeroTrustGatewayProxyEndpointIpCreate {const ZeroTrustGatewayProxyEndpointIpCreate({required this.name, this.kind, });

factory ZeroTrustGatewayProxyEndpointIpCreate.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProxyEndpointIpCreate(
  kind: json['kind'] != null ? ZeroTrustGatewayProxyEndpointIpCreateKind.fromJson(json['kind'] as String) : null,
  name: ZeroTrustGatewayProxyEndpointsComponentsSchemasName.fromJson(json['name'] as String),
); }

/// The proxy endpoint kind
final ZeroTrustGatewayProxyEndpointIpCreateKind? kind;

final ZeroTrustGatewayProxyEndpointsComponentsSchemasName name;

Map<String, dynamic> toJson() { return {
  if (kind != null) 'kind': kind?.toJson(),
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
ZeroTrustGatewayProxyEndpointIpCreate copyWith({ZeroTrustGatewayProxyEndpointIpCreateKind Function()? kind, ZeroTrustGatewayProxyEndpointsComponentsSchemasName? name, }) { return ZeroTrustGatewayProxyEndpointIpCreate(
  kind: kind != null ? kind() : this.kind,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayProxyEndpointIpCreate &&
          kind == other.kind &&
          name == other.name; } 
@override int get hashCode { return Object.hash(kind, name); } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointIpCreate(kind: $kind, name: $name)'; } 
 }
