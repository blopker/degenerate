// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_automatic_return_routing.dart';import 'magic_cloudflare_gre_endpoint.dart';import 'magic_customer_gre_endpoint.dart';import 'magic_gre_tunnel_name.dart';import 'magic_interface_address.dart';import 'magic_interface_address6.dart';import 'magic_mtu.dart';import 'magic_schemas_description.dart';import 'magic_ttl.dart';import 'magic_tunnel_health_check.dart';final class MagicGreTunnelAddSingleRequest {const MagicGreTunnelAddSingleRequest({this.automaticReturnRouting, required this.cloudflareGreEndpoint, required this.customerGreEndpoint, this.description, this.healthCheck, required this.interfaceAddress, this.interfaceAddress6, this.mtu, required this.name, this.ttl, });

factory MagicGreTunnelAddSingleRequest.fromJson(Map<String, dynamic> json) { return MagicGreTunnelAddSingleRequest(
  automaticReturnRouting: json['automatic_return_routing'] != null ? MagicAutomaticReturnRouting.fromJson(json['automatic_return_routing'] as bool) : null,
  cloudflareGreEndpoint: MagicCloudflareGreEndpoint.fromJson(json['cloudflare_gre_endpoint'] as String),
  customerGreEndpoint: MagicCustomerGreEndpoint.fromJson(json['customer_gre_endpoint'] as String),
  description: json['description'] != null ? MagicSchemasDescription.fromJson(json['description'] as String) : null,
  healthCheck: json['health_check'] != null ? MagicTunnelHealthCheck.fromJson(json['health_check'] as Map<String, dynamic>) : null,
  interfaceAddress: MagicInterfaceAddress.fromJson(json['interface_address'] as String),
  interfaceAddress6: json['interface_address6'] != null ? MagicInterfaceAddress6.fromJson(json['interface_address6'] as String) : null,
  mtu: json['mtu'] != null ? MagicMtu.fromJson(json['mtu'] as num) : null,
  name: MagicGreTunnelName.fromJson(json['name'] as String),
  ttl: json['ttl'] != null ? MagicTtl.fromJson(json['ttl'] as num) : null,
); }

/// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
final MagicAutomaticReturnRouting? automaticReturnRouting;

/// The IP address assigned to the Cloudflare side of the GRE tunnel.
final MagicCloudflareGreEndpoint cloudflareGreEndpoint;

/// The IP address assigned to the customer side of the GRE tunnel.
final MagicCustomerGreEndpoint customerGreEndpoint;

final MagicSchemasDescription? description;

final MagicTunnelHealthCheck? healthCheck;

final MagicInterfaceAddress interfaceAddress;

final MagicInterfaceAddress6? interfaceAddress6;

final MagicMtu? mtu;

final MagicGreTunnelName name;

final MagicTtl? ttl;

Map<String, dynamic> toJson() { return {
  if (automaticReturnRouting != null) 'automatic_return_routing': automaticReturnRouting?.toJson(),
  'cloudflare_gre_endpoint': cloudflareGreEndpoint.toJson(),
  'customer_gre_endpoint': customerGreEndpoint.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (healthCheck != null) 'health_check': healthCheck?.toJson(),
  'interface_address': interfaceAddress.toJson(),
  if (interfaceAddress6 != null) 'interface_address6': interfaceAddress6?.toJson(),
  if (mtu != null) 'mtu': mtu?.toJson(),
  'name': name.toJson(),
  if (ttl != null) 'ttl': ttl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cloudflare_gre_endpoint') &&
      json.containsKey('customer_gre_endpoint') &&
      json.containsKey('interface_address') &&
      json.containsKey('name'); } 
MagicGreTunnelAddSingleRequest copyWith({MagicAutomaticReturnRouting Function()? automaticReturnRouting, MagicCloudflareGreEndpoint? cloudflareGreEndpoint, MagicCustomerGreEndpoint? customerGreEndpoint, MagicSchemasDescription Function()? description, MagicTunnelHealthCheck Function()? healthCheck, MagicInterfaceAddress? interfaceAddress, MagicInterfaceAddress6 Function()? interfaceAddress6, MagicMtu Function()? mtu, MagicGreTunnelName? name, MagicTtl Function()? ttl, }) { return MagicGreTunnelAddSingleRequest(
  automaticReturnRouting: automaticReturnRouting != null ? automaticReturnRouting() : this.automaticReturnRouting,
  cloudflareGreEndpoint: cloudflareGreEndpoint ?? this.cloudflareGreEndpoint,
  customerGreEndpoint: customerGreEndpoint ?? this.customerGreEndpoint,
  description: description != null ? description() : this.description,
  healthCheck: healthCheck != null ? healthCheck() : this.healthCheck,
  interfaceAddress: interfaceAddress ?? this.interfaceAddress,
  interfaceAddress6: interfaceAddress6 != null ? interfaceAddress6() : this.interfaceAddress6,
  mtu: mtu != null ? mtu() : this.mtu,
  name: name ?? this.name,
  ttl: ttl != null ? ttl() : this.ttl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicGreTunnelAddSingleRequest &&
          automaticReturnRouting == other.automaticReturnRouting &&
          cloudflareGreEndpoint == other.cloudflareGreEndpoint &&
          customerGreEndpoint == other.customerGreEndpoint &&
          description == other.description &&
          healthCheck == other.healthCheck &&
          interfaceAddress == other.interfaceAddress &&
          interfaceAddress6 == other.interfaceAddress6 &&
          mtu == other.mtu &&
          name == other.name &&
          ttl == other.ttl; } 
@override int get hashCode { return Object.hash(automaticReturnRouting, cloudflareGreEndpoint, customerGreEndpoint, description, healthCheck, interfaceAddress, interfaceAddress6, mtu, name, ttl); } 
@override String toString() { return 'MagicGreTunnelAddSingleRequest(automaticReturnRouting: $automaticReturnRouting, cloudflareGreEndpoint: $cloudflareGreEndpoint, customerGreEndpoint: $customerGreEndpoint, description: $description, healthCheck: $healthCheck, interfaceAddress: $interfaceAddress, interfaceAddress6: $interfaceAddress6, mtu: $mtu, name: $name, ttl: $ttl)'; } 
 }
