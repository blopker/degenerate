// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_automatic_return_routing.dart';import 'magic_cloudflare_gre_endpoint.dart';import 'magic_customer_gre_endpoint.dart';import 'magic_gre_tunnel_name.dart';import 'magic_interface_address.dart';import 'magic_interface_address6.dart';import 'magic_mtu.dart';import 'magic_schemas_description.dart';import 'magic_ttl.dart';import 'magic_tunnel_health_check_request.dart';@immutable final class MagicGreTunnelAddSingleRequestRequest {const MagicGreTunnelAddSingleRequestRequest({required this.cloudflareGreEndpoint, required this.customerGreEndpoint, required this.interfaceAddress, required this.name, this.automaticReturnRouting, this.description, this.healthCheck, this.interfaceAddress6, this.mtu, this.ttl, });

factory MagicGreTunnelAddSingleRequestRequest.fromJson(Map<String, dynamic> json) { return MagicGreTunnelAddSingleRequestRequest(
  automaticReturnRouting: json['automatic_return_routing'] != null ? MagicAutomaticReturnRouting.fromJson(json['automatic_return_routing'] as bool) : null,
  cloudflareGreEndpoint: MagicCloudflareGreEndpoint.fromJson(json['cloudflare_gre_endpoint'] as String),
  customerGreEndpoint: MagicCustomerGreEndpoint.fromJson(json['customer_gre_endpoint'] as String),
  description: json['description'] != null ? MagicSchemasDescription.fromJson(json['description'] as String) : null,
  healthCheck: json['health_check'] != null ? MagicTunnelHealthCheckRequest.fromJson(json['health_check'] as Map<String, dynamic>) : null,
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

/// An optional description of the GRE tunnel.
final MagicSchemasDescription? description;

final MagicTunnelHealthCheckRequest? healthCheck;

/// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
final MagicInterfaceAddress interfaceAddress;

/// A 127 bit IPV6 prefix from within the virtual_subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual_subnet6. Eg if virtual_subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface_address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
final MagicInterfaceAddress6? interfaceAddress6;

/// Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. The minimum value is 576.
final MagicMtu? mtu;

/// The name of the tunnel. The name cannot contain spaces or special characters, must be 15 characters or less, and cannot share a name with another GRE tunnel.
final MagicGreTunnelName name;

/// Time To Live (TTL) in number of hops of the GRE tunnel.
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
MagicGreTunnelAddSingleRequestRequest copyWith({MagicAutomaticReturnRouting? Function()? automaticReturnRouting, MagicCloudflareGreEndpoint? cloudflareGreEndpoint, MagicCustomerGreEndpoint? customerGreEndpoint, MagicSchemasDescription? Function()? description, MagicTunnelHealthCheckRequest? Function()? healthCheck, MagicInterfaceAddress? interfaceAddress, MagicInterfaceAddress6? Function()? interfaceAddress6, MagicMtu? Function()? mtu, MagicGreTunnelName? name, MagicTtl? Function()? ttl, }) { return MagicGreTunnelAddSingleRequestRequest(
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
      other is MagicGreTunnelAddSingleRequestRequest &&
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
@override String toString() { return 'MagicGreTunnelAddSingleRequestRequest(automaticReturnRouting: $automaticReturnRouting, cloudflareGreEndpoint: $cloudflareGreEndpoint, customerGreEndpoint: $customerGreEndpoint, description: $description, healthCheck: $healthCheck, interfaceAddress: $interfaceAddress, interfaceAddress6: $interfaceAddress6, mtu: $mtu, name: $name, ttl: $ttl)'; } 
 }
