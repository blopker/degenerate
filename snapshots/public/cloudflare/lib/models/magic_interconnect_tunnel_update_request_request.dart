// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_automatic_return_routing.dart';import 'magic_gre.dart';import 'magic_health_check_base_request.dart';import 'magic_interconnect_components_schemas_description.dart';import 'magic_interface_address.dart';import 'magic_interface_address6.dart';import 'magic_schemas_mtu.dart';@immutable final class MagicInterconnectTunnelUpdateRequestRequest {const MagicInterconnectTunnelUpdateRequestRequest({this.automaticReturnRouting, this.description, this.gre, this.healthCheck, this.interfaceAddress, this.interfaceAddress6, this.mtu, });

factory MagicInterconnectTunnelUpdateRequestRequest.fromJson(Map<String, dynamic> json) { return MagicInterconnectTunnelUpdateRequestRequest(
  automaticReturnRouting: json['automatic_return_routing'] != null ? MagicAutomaticReturnRouting.fromJson(json['automatic_return_routing'] as bool) : null,
  description: json['description'] != null ? MagicInterconnectComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  gre: json['gre'] != null ? MagicGre.fromJson(json['gre'] as Map<String, dynamic>) : null,
  healthCheck: json['health_check'] != null ? MagicHealthCheckBaseRequest.fromJson(json['health_check'] as Map<String, dynamic>) : null,
  interfaceAddress: json['interface_address'] != null ? MagicInterfaceAddress.fromJson(json['interface_address'] as String) : null,
  interfaceAddress6: json['interface_address6'] != null ? MagicInterfaceAddress6.fromJson(json['interface_address6'] as String) : null,
  mtu: json['mtu'] != null ? MagicSchemasMtu.fromJson(json['mtu'] as num) : null,
); }

/// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
final MagicAutomaticReturnRouting? automaticReturnRouting;

/// An optional description of the interconnect.
final MagicInterconnectComponentsSchemasDescription? description;

final MagicGre? gre;

final MagicHealthCheckBaseRequest? healthCheck;

/// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
final MagicInterfaceAddress? interfaceAddress;

/// A 127 bit IPV6 prefix from within the virtual_subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual_subnet6. Eg if virtual_subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface_address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
final MagicInterfaceAddress6? interfaceAddress6;

/// The Maximum Transmission Unit (MTU) in bytes for the interconnect. The minimum value is 576.
final MagicSchemasMtu? mtu;

Map<String, dynamic> toJson() { return {
  if (automaticReturnRouting != null) 'automatic_return_routing': automaticReturnRouting?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (gre != null) 'gre': gre?.toJson(),
  if (healthCheck != null) 'health_check': healthCheck?.toJson(),
  if (interfaceAddress != null) 'interface_address': interfaceAddress?.toJson(),
  if (interfaceAddress6 != null) 'interface_address6': interfaceAddress6?.toJson(),
  if (mtu != null) 'mtu': mtu?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'automatic_return_routing', 'description', 'gre', 'health_check', 'interface_address', 'interface_address6', 'mtu'}.contains(key)); } 
MagicInterconnectTunnelUpdateRequestRequest copyWith({MagicAutomaticReturnRouting? Function()? automaticReturnRouting, MagicInterconnectComponentsSchemasDescription? Function()? description, MagicGre? Function()? gre, MagicHealthCheckBaseRequest? Function()? healthCheck, MagicInterfaceAddress? Function()? interfaceAddress, MagicInterfaceAddress6? Function()? interfaceAddress6, MagicSchemasMtu? Function()? mtu, }) { return MagicInterconnectTunnelUpdateRequestRequest(
  automaticReturnRouting: automaticReturnRouting != null ? automaticReturnRouting() : this.automaticReturnRouting,
  description: description != null ? description() : this.description,
  gre: gre != null ? gre() : this.gre,
  healthCheck: healthCheck != null ? healthCheck() : this.healthCheck,
  interfaceAddress: interfaceAddress != null ? interfaceAddress() : this.interfaceAddress,
  interfaceAddress6: interfaceAddress6 != null ? interfaceAddress6() : this.interfaceAddress6,
  mtu: mtu != null ? mtu() : this.mtu,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicInterconnectTunnelUpdateRequestRequest &&
          automaticReturnRouting == other.automaticReturnRouting &&
          description == other.description &&
          gre == other.gre &&
          healthCheck == other.healthCheck &&
          interfaceAddress == other.interfaceAddress &&
          interfaceAddress6 == other.interfaceAddress6 &&
          mtu == other.mtu; } 
@override int get hashCode { return Object.hash(automaticReturnRouting, description, gre, healthCheck, interfaceAddress, interfaceAddress6, mtu); } 
@override String toString() { return 'MagicInterconnectTunnelUpdateRequestRequest(automaticReturnRouting: $automaticReturnRouting, description: $description, gre: $gre, healthCheck: $healthCheck, interfaceAddress: $interfaceAddress, interfaceAddress6: $interfaceAddress6, mtu: $mtu)'; } 
 }
