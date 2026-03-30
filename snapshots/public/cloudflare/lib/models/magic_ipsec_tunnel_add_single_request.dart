// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_automatic_return_routing.dart';import 'magic_bgp_config.dart';import 'magic_cloudflare_ipsec_endpoint.dart';import 'magic_components_schemas_description.dart';import 'magic_custom_remote_identities.dart';import 'magic_customer_ipsec_endpoint.dart';import 'magic_interface_address.dart';import 'magic_interface_address6.dart';import 'magic_ipsec_tunnel_name.dart';import 'magic_psk.dart';import 'magic_replay_protection.dart';import 'magic_tunnel_health_check.dart';final class MagicIpsecTunnelAddSingleRequest {const MagicIpsecTunnelAddSingleRequest({this.automaticReturnRouting, this.bgp, required this.cloudflareEndpoint, this.customRemoteIdentities, this.customerEndpoint, this.description, this.healthCheck, required this.interfaceAddress, this.interfaceAddress6, required this.name, this.psk, this.replayProtection, });

factory MagicIpsecTunnelAddSingleRequest.fromJson(Map<String, dynamic> json) { return MagicIpsecTunnelAddSingleRequest(
  automaticReturnRouting: json['automatic_return_routing'] != null ? MagicAutomaticReturnRouting.fromJson(json['automatic_return_routing'] as bool) : null,
  bgp: json['bgp'] != null ? MagicBgpConfig.fromJson(json['bgp'] as Map<String, dynamic>) : null,
  cloudflareEndpoint: MagicCloudflareIpsecEndpoint.fromJson(json['cloudflare_endpoint'] as String),
  customRemoteIdentities: json['custom_remote_identities'] != null ? MagicCustomRemoteIdentities.fromJson(json['custom_remote_identities'] as Map<String, dynamic>) : null,
  customerEndpoint: json['customer_endpoint'] != null ? MagicCustomerIpsecEndpoint.fromJson(json['customer_endpoint'] as String) : null,
  description: json['description'] != null ? MagicComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  healthCheck: json['health_check'] != null ? MagicTunnelHealthCheck.fromJson(json['health_check'] as Map<String, dynamic>) : null,
  interfaceAddress: MagicInterfaceAddress.fromJson(json['interface_address'] as String),
  interfaceAddress6: json['interface_address6'] != null ? MagicInterfaceAddress6.fromJson(json['interface_address6'] as String) : null,
  name: MagicIpsecTunnelName.fromJson(json['name'] as String),
  psk: json['psk'] != null ? MagicPsk.fromJson(json['psk'] as String) : null,
  replayProtection: json['replay_protection'] != null ? MagicReplayProtection.fromJson(json['replay_protection'] as bool) : null,
); }

/// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
final MagicAutomaticReturnRouting? automaticReturnRouting;

final MagicBgpConfig? bgp;

/// The IP address assigned to the Cloudflare side of the IPsec tunnel.
final MagicCloudflareIpsecEndpoint cloudflareEndpoint;

final MagicCustomRemoteIdentities? customRemoteIdentities;

/// The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
final MagicCustomerIpsecEndpoint? customerEndpoint;

/// An optional description forthe IPsec tunnel.
final MagicComponentsSchemasDescription? description;

final MagicTunnelHealthCheck? healthCheck;

/// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
final MagicInterfaceAddress interfaceAddress;

/// A 127 bit IPV6 prefix from within the virtual_subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual_subnet6. Eg if virtual_subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface_address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
final MagicInterfaceAddress6? interfaceAddress6;

final MagicIpsecTunnelName name;

final MagicPsk? psk;

final MagicReplayProtection? replayProtection;

Map<String, dynamic> toJson() { return {
  if (automaticReturnRouting != null) 'automatic_return_routing': automaticReturnRouting?.toJson(),
  if (bgp != null) 'bgp': bgp?.toJson(),
  'cloudflare_endpoint': cloudflareEndpoint.toJson(),
  if (customRemoteIdentities != null) 'custom_remote_identities': customRemoteIdentities?.toJson(),
  if (customerEndpoint != null) 'customer_endpoint': customerEndpoint?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (healthCheck != null) 'health_check': healthCheck?.toJson(),
  'interface_address': interfaceAddress.toJson(),
  if (interfaceAddress6 != null) 'interface_address6': interfaceAddress6?.toJson(),
  'name': name.toJson(),
  if (psk != null) 'psk': psk?.toJson(),
  if (replayProtection != null) 'replay_protection': replayProtection?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cloudflare_endpoint') &&
      json.containsKey('interface_address') &&
      json.containsKey('name'); } 
MagicIpsecTunnelAddSingleRequest copyWith({MagicAutomaticReturnRouting Function()? automaticReturnRouting, MagicBgpConfig Function()? bgp, MagicCloudflareIpsecEndpoint? cloudflareEndpoint, MagicCustomRemoteIdentities Function()? customRemoteIdentities, MagicCustomerIpsecEndpoint Function()? customerEndpoint, MagicComponentsSchemasDescription Function()? description, MagicTunnelHealthCheck Function()? healthCheck, MagicInterfaceAddress? interfaceAddress, MagicInterfaceAddress6 Function()? interfaceAddress6, MagicIpsecTunnelName? name, MagicPsk Function()? psk, MagicReplayProtection Function()? replayProtection, }) { return MagicIpsecTunnelAddSingleRequest(
  automaticReturnRouting: automaticReturnRouting != null ? automaticReturnRouting() : this.automaticReturnRouting,
  bgp: bgp != null ? bgp() : this.bgp,
  cloudflareEndpoint: cloudflareEndpoint ?? this.cloudflareEndpoint,
  customRemoteIdentities: customRemoteIdentities != null ? customRemoteIdentities() : this.customRemoteIdentities,
  customerEndpoint: customerEndpoint != null ? customerEndpoint() : this.customerEndpoint,
  description: description != null ? description() : this.description,
  healthCheck: healthCheck != null ? healthCheck() : this.healthCheck,
  interfaceAddress: interfaceAddress ?? this.interfaceAddress,
  interfaceAddress6: interfaceAddress6 != null ? interfaceAddress6() : this.interfaceAddress6,
  name: name ?? this.name,
  psk: psk != null ? psk() : this.psk,
  replayProtection: replayProtection != null ? replayProtection() : this.replayProtection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicIpsecTunnelAddSingleRequest &&
          automaticReturnRouting == other.automaticReturnRouting &&
          bgp == other.bgp &&
          cloudflareEndpoint == other.cloudflareEndpoint &&
          customRemoteIdentities == other.customRemoteIdentities &&
          customerEndpoint == other.customerEndpoint &&
          description == other.description &&
          healthCheck == other.healthCheck &&
          interfaceAddress == other.interfaceAddress &&
          interfaceAddress6 == other.interfaceAddress6 &&
          name == other.name &&
          psk == other.psk &&
          replayProtection == other.replayProtection; } 
@override int get hashCode { return Object.hash(automaticReturnRouting, bgp, cloudflareEndpoint, customRemoteIdentities, customerEndpoint, description, healthCheck, interfaceAddress, interfaceAddress6, name, psk, replayProtection); } 
@override String toString() { return 'MagicIpsecTunnelAddSingleRequest(automaticReturnRouting: $automaticReturnRouting, bgp: $bgp, cloudflareEndpoint: $cloudflareEndpoint, customRemoteIdentities: $customRemoteIdentities, customerEndpoint: $customerEndpoint, description: $description, healthCheck: $healthCheck, interfaceAddress: $interfaceAddress, interfaceAddress6: $interfaceAddress6, name: $name, psk: $psk, replayProtection: $replayProtection)'; } 
 }
