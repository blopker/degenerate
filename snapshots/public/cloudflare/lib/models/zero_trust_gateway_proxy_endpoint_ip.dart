// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_components_schemas_uuid.dart';import 'zero_trust_gateway_proxy_endpoints_components_schemas_name.dart';import 'zero_trust_gateway_read_only_timestamp.dart';import 'zero_trust_gateway_schemas_subdomain.dart';@immutable final class ZeroTrustGatewayProxyEndpointIp {const ZeroTrustGatewayProxyEndpointIp({required this.ips, required this.name, this.createdAt, this.id, this.kind, this.subdomain, this.updatedAt, });

factory ZeroTrustGatewayProxyEndpointIp.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayProxyEndpointIp(
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewayComponentsSchemasUuid.fromJson(json['id'] as String) : null,
  ips: (json['ips'] as List<dynamic>).map((e) => e as String).toList(),
  kind: json['kind'] as String?,
  name: ZeroTrustGatewayProxyEndpointsComponentsSchemasName.fromJson(json['name'] as String),
  subdomain: json['subdomain'] != null ? ZeroTrustGatewaySchemasSubdomain.fromJson(json['subdomain'] as String) : null,
  updatedAt: json['updated_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['updated_at'] as String) : null,
); }

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

final ZeroTrustGatewayComponentsSchemasUuid? id;

/// Specify the list of CIDRs to restrict ingress connections.
final List<String> ips;

/// The proxy endpoint kind
final String? kind;

final ZeroTrustGatewayProxyEndpointsComponentsSchemasName name;

final ZeroTrustGatewaySchemasSubdomain? subdomain;

final ZeroTrustGatewayReadOnlyTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  'ips': ips,
  'kind': ?kind,
  'name': name.toJson(),
  if (subdomain != null) 'subdomain': subdomain?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ips') &&
      json.containsKey('name'); } 
ZeroTrustGatewayProxyEndpointIp copyWith({ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayComponentsSchemasUuid Function()? id, List<String>? ips, String Function()? kind, ZeroTrustGatewayProxyEndpointsComponentsSchemasName? name, ZeroTrustGatewaySchemasSubdomain Function()? subdomain, ZeroTrustGatewayReadOnlyTimestamp Function()? updatedAt, }) { return ZeroTrustGatewayProxyEndpointIp(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  ips: ips ?? this.ips,
  kind: kind != null ? kind() : this.kind,
  name: name ?? this.name,
  subdomain: subdomain != null ? subdomain() : this.subdomain,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayProxyEndpointIp &&
          createdAt == other.createdAt &&
          id == other.id &&
          listEquals(ips, other.ips) &&
          kind == other.kind &&
          name == other.name &&
          subdomain == other.subdomain &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, id, Object.hashAll(ips), kind, name, subdomain, updatedAt); } 
@override String toString() { return 'ZeroTrustGatewayProxyEndpointIp(createdAt: $createdAt, id: $id, ips: $ips, kind: $kind, name: $name, subdomain: $subdomain, updatedAt: $updatedAt)'; } 
 }
