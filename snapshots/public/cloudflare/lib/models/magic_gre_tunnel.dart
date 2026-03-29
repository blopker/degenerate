// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_automatic_return_routing.dart';import 'magic_bgp_config.dart';import 'magic_bgp_status_with_state.dart';import 'magic_cloudflare_gre_endpoint.dart';import 'magic_customer_gre_endpoint.dart';import 'magic_gre_tunnel_name.dart';import 'magic_health_check_base.dart';import 'magic_interface_address.dart';import 'magic_interface_address6.dart';import 'magic_mtu.dart';import 'magic_schemas_created_on.dart';import 'magic_schemas_description.dart';import 'magic_schemas_identifier.dart';import 'magic_schemas_modified_on.dart';import 'magic_ttl.dart';final class MagicGreTunnel {const MagicGreTunnel({this.automaticReturnRouting, this.bgp, this.bgpStatus, required this.cloudflareGreEndpoint, this.createdOn, required this.customerGreEndpoint, this.description, this.healthCheck, required this.id, required this.interfaceAddress, this.interfaceAddress6, this.modifiedOn, this.mtu, required this.name, this.ttl, });

factory MagicGreTunnel.fromJson(Map<String, dynamic> json) { return MagicGreTunnel(
  automaticReturnRouting: json['automatic_return_routing'] != null ? MagicAutomaticReturnRouting.fromJson(json['automatic_return_routing'] as bool) : null,
  bgp: json['bgp'] != null ? MagicBgpConfig.fromJson(json['bgp'] as Map<String, dynamic>) : null,
  bgpStatus: json['bgp_status'] != null ? MagicBgpStatusWithState.fromJson(json['bgp_status'] as Map<String, dynamic>) : null,
  cloudflareGreEndpoint: MagicCloudflareGreEndpoint.fromJson(json['cloudflare_gre_endpoint'] as String),
  createdOn: json['created_on'] != null ? MagicSchemasCreatedOn.fromJson(json['created_on'] as String) : null,
  customerGreEndpoint: MagicCustomerGreEndpoint.fromJson(json['customer_gre_endpoint'] as String),
  description: json['description'] != null ? MagicSchemasDescription.fromJson(json['description'] as String) : null,
  healthCheck: json['health_check'] != null ? MagicHealthCheckBase.fromJson(json['health_check'] as Map<String, dynamic>) : null,
  id: MagicSchemasIdentifier.fromJson(json['id'] as String),
  interfaceAddress: MagicInterfaceAddress.fromJson(json['interface_address'] as String),
  interfaceAddress6: json['interface_address6'] != null ? MagicInterfaceAddress6.fromJson(json['interface_address6'] as String) : null,
  modifiedOn: json['modified_on'] != null ? MagicSchemasModifiedOn.fromJson(json['modified_on'] as String) : null,
  mtu: json['mtu'] != null ? MagicMtu.fromJson(json['mtu'] as num) : null,
  name: MagicGreTunnelName.fromJson(json['name'] as String),
  ttl: json['ttl'] != null ? MagicTtl.fromJson(json['ttl'] as num) : null,
); }

/// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
final MagicAutomaticReturnRouting? automaticReturnRouting;

final MagicBgpConfig? bgp;

final MagicBgpStatusWithState? bgpStatus;

/// The IP address assigned to the Cloudflare side of the GRE tunnel.
final MagicCloudflareGreEndpoint cloudflareGreEndpoint;

final MagicSchemasCreatedOn? createdOn;

/// The IP address assigned to the customer side of the GRE tunnel.
final MagicCustomerGreEndpoint customerGreEndpoint;

final MagicSchemasDescription? description;

final MagicHealthCheckBase? healthCheck;

final MagicSchemasIdentifier id;

final MagicInterfaceAddress interfaceAddress;

final MagicInterfaceAddress6? interfaceAddress6;

final MagicSchemasModifiedOn? modifiedOn;

final MagicMtu? mtu;

final MagicGreTunnelName name;

final MagicTtl? ttl;

Map<String, dynamic> toJson() { return {
  if (automaticReturnRouting != null) 'automatic_return_routing': automaticReturnRouting?.toJson(),
  if (bgp != null) 'bgp': bgp?.toJson(),
  if (bgpStatus != null) 'bgp_status': bgpStatus?.toJson(),
  'cloudflare_gre_endpoint': cloudflareGreEndpoint.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  'customer_gre_endpoint': customerGreEndpoint.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (healthCheck != null) 'health_check': healthCheck?.toJson(),
  'id': id.toJson(),
  'interface_address': interfaceAddress.toJson(),
  if (interfaceAddress6 != null) 'interface_address6': interfaceAddress6?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (mtu != null) 'mtu': mtu?.toJson(),
  'name': name.toJson(),
  if (ttl != null) 'ttl': ttl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cloudflare_gre_endpoint') &&
      json.containsKey('customer_gre_endpoint') &&
      json.containsKey('id') &&
      json.containsKey('interface_address') &&
      json.containsKey('name'); } 
MagicGreTunnel copyWith({MagicAutomaticReturnRouting Function()? automaticReturnRouting, MagicBgpConfig Function()? bgp, MagicBgpStatusWithState Function()? bgpStatus, MagicCloudflareGreEndpoint? cloudflareGreEndpoint, MagicSchemasCreatedOn Function()? createdOn, MagicCustomerGreEndpoint? customerGreEndpoint, MagicSchemasDescription Function()? description, MagicHealthCheckBase Function()? healthCheck, MagicSchemasIdentifier? id, MagicInterfaceAddress? interfaceAddress, MagicInterfaceAddress6 Function()? interfaceAddress6, MagicSchemasModifiedOn Function()? modifiedOn, MagicMtu Function()? mtu, MagicGreTunnelName? name, MagicTtl Function()? ttl, }) { return MagicGreTunnel(
  automaticReturnRouting: automaticReturnRouting != null ? automaticReturnRouting() : this.automaticReturnRouting,
  bgp: bgp != null ? bgp() : this.bgp,
  bgpStatus: bgpStatus != null ? bgpStatus() : this.bgpStatus,
  cloudflareGreEndpoint: cloudflareGreEndpoint ?? this.cloudflareGreEndpoint,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  customerGreEndpoint: customerGreEndpoint ?? this.customerGreEndpoint,
  description: description != null ? description() : this.description,
  healthCheck: healthCheck != null ? healthCheck() : this.healthCheck,
  id: id ?? this.id,
  interfaceAddress: interfaceAddress ?? this.interfaceAddress,
  interfaceAddress6: interfaceAddress6 != null ? interfaceAddress6() : this.interfaceAddress6,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  mtu: mtu != null ? mtu() : this.mtu,
  name: name ?? this.name,
  ttl: ttl != null ? ttl() : this.ttl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicGreTunnel &&
          automaticReturnRouting == other.automaticReturnRouting &&
          bgp == other.bgp &&
          bgpStatus == other.bgpStatus &&
          cloudflareGreEndpoint == other.cloudflareGreEndpoint &&
          createdOn == other.createdOn &&
          customerGreEndpoint == other.customerGreEndpoint &&
          description == other.description &&
          healthCheck == other.healthCheck &&
          id == other.id &&
          interfaceAddress == other.interfaceAddress &&
          interfaceAddress6 == other.interfaceAddress6 &&
          modifiedOn == other.modifiedOn &&
          mtu == other.mtu &&
          name == other.name &&
          ttl == other.ttl; } 
@override int get hashCode { return Object.hash(automaticReturnRouting, bgp, bgpStatus, cloudflareGreEndpoint, createdOn, customerGreEndpoint, description, healthCheck, id, interfaceAddress, interfaceAddress6, modifiedOn, mtu, name, ttl); } 
@override String toString() { return 'MagicGreTunnel(automaticReturnRouting: $automaticReturnRouting, bgp: $bgp, bgpStatus: $bgpStatus, cloudflareGreEndpoint: $cloudflareGreEndpoint, createdOn: $createdOn, customerGreEndpoint: $customerGreEndpoint, description: $description, healthCheck: $healthCheck, id: $id, interfaceAddress: $interfaceAddress, interfaceAddress6: $interfaceAddress6, modifiedOn: $modifiedOn, mtu: $mtu, name: $name, ttl: $ttl)'; } 
 }
