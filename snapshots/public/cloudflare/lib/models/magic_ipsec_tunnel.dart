// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_automatic_return_routing.dart';import 'magic_bgp_config.dart';import 'magic_bgp_status_with_state.dart';import 'magic_cloudflare_ipsec_endpoint.dart';import 'magic_components_schemas_description.dart';import 'magic_custom_remote_identities.dart';import 'magic_customer_ipsec_endpoint.dart';import 'magic_interface_address.dart';import 'magic_interface_address6.dart';import 'magic_ipsec_tunnel_name.dart';import 'magic_psk_metadata.dart';import 'magic_replay_protection.dart';import 'magic_schemas_created_on.dart';import 'magic_schemas_identifier.dart';import 'magic_schemas_modified_on.dart';import 'magic_tunnel_health_check.dart';/// When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in the ESP tunnel (Phase 2).
extension type const MagicAllowNullCipher(bool value) {
factory MagicAllowNullCipher.fromJson(bool json) => MagicAllowNullCipher(json);

bool toJson() => value;

}
@immutable final class MagicIpsecTunnel {const MagicIpsecTunnel({required this.cloudflareEndpoint, required this.id, required this.interfaceAddress, required this.name, this.allowNullCipher, this.automaticReturnRouting, this.bgp, this.bgpStatus, this.createdOn, this.customRemoteIdentities, this.customerEndpoint, this.description, this.healthCheck, this.interfaceAddress6, this.modifiedOn, this.pskMetadata, this.replayProtection, });

factory MagicIpsecTunnel.fromJson(Map<String, dynamic> json) { return MagicIpsecTunnel(
  allowNullCipher: json['allow_null_cipher'] != null ? MagicAllowNullCipher.fromJson(json['allow_null_cipher'] as bool) : null,
  automaticReturnRouting: json['automatic_return_routing'] != null ? MagicAutomaticReturnRouting.fromJson(json['automatic_return_routing'] as bool) : null,
  bgp: json['bgp'] != null ? MagicBgpConfig.fromJson(json['bgp'] as Map<String, dynamic>) : null,
  bgpStatus: json['bgp_status'] != null ? MagicBgpStatusWithState.fromJson(json['bgp_status'] as Map<String, dynamic>) : null,
  cloudflareEndpoint: MagicCloudflareIpsecEndpoint.fromJson(json['cloudflare_endpoint'] as String),
  createdOn: json['created_on'] != null ? MagicSchemasCreatedOn.fromJson(json['created_on'] as String) : null,
  customRemoteIdentities: json['custom_remote_identities'] != null ? MagicCustomRemoteIdentities.fromJson(json['custom_remote_identities'] as Map<String, dynamic>) : null,
  customerEndpoint: json['customer_endpoint'] != null ? MagicCustomerIpsecEndpoint.fromJson(json['customer_endpoint'] as String) : null,
  description: json['description'] != null ? MagicComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  healthCheck: json['health_check'] != null ? MagicTunnelHealthCheck.fromJson(json['health_check'] as Map<String, dynamic>) : null,
  id: MagicSchemasIdentifier.fromJson(json['id'] as String),
  interfaceAddress: MagicInterfaceAddress.fromJson(json['interface_address'] as String),
  interfaceAddress6: json['interface_address6'] != null ? MagicInterfaceAddress6.fromJson(json['interface_address6'] as String) : null,
  modifiedOn: json['modified_on'] != null ? MagicSchemasModifiedOn.fromJson(json['modified_on'] as String) : null,
  name: MagicIpsecTunnelName.fromJson(json['name'] as String),
  pskMetadata: json['psk_metadata'] != null ? MagicPskMetadata.fromJson(json['psk_metadata'] as Map<String, dynamic>) : null,
  replayProtection: json['replay_protection'] != null ? MagicReplayProtection.fromJson(json['replay_protection'] as bool) : null,
); }

/// When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in the ESP tunnel (Phase 2).
final MagicAllowNullCipher? allowNullCipher;

/// True if automatic stateful return routing should be enabled for a tunnel, false otherwise.
final MagicAutomaticReturnRouting? automaticReturnRouting;

final MagicBgpConfig? bgp;

final MagicBgpStatusWithState? bgpStatus;

/// The IP address assigned to the Cloudflare side of the IPsec tunnel.
final MagicCloudflareIpsecEndpoint cloudflareEndpoint;

final MagicSchemasCreatedOn? createdOn;

final MagicCustomRemoteIdentities? customRemoteIdentities;

/// The IP address assigned to the customer side of the IPsec tunnel. Not required, but must be set for proactive traceroutes to work.
final MagicCustomerIpsecEndpoint? customerEndpoint;

/// An optional description forthe IPsec tunnel.
final MagicComponentsSchemasDescription? description;

final MagicTunnelHealthCheck? healthCheck;

final MagicSchemasIdentifier id;

/// A 31-bit prefix (/31 in CIDR notation) supporting two hosts, one for each side of the tunnel. Select the subnet from the following private IP space: 10.0.0.0–10.255.255.255, 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
final MagicInterfaceAddress interfaceAddress;

/// A 127 bit IPV6 prefix from within the virtual_subnet6 prefix space with the address being the first IP of the subnet and not same as the address of virtual_subnet6. Eg if virtual_subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 , interface_address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
final MagicInterfaceAddress6? interfaceAddress6;

final MagicSchemasModifiedOn? modifiedOn;

final MagicIpsecTunnelName name;

final MagicPskMetadata? pskMetadata;

final MagicReplayProtection? replayProtection;

Map<String, dynamic> toJson() { return {
  if (allowNullCipher != null) 'allow_null_cipher': allowNullCipher?.toJson(),
  if (automaticReturnRouting != null) 'automatic_return_routing': automaticReturnRouting?.toJson(),
  if (bgp != null) 'bgp': bgp?.toJson(),
  if (bgpStatus != null) 'bgp_status': bgpStatus?.toJson(),
  'cloudflare_endpoint': cloudflareEndpoint.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (customRemoteIdentities != null) 'custom_remote_identities': customRemoteIdentities?.toJson(),
  if (customerEndpoint != null) 'customer_endpoint': customerEndpoint?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (healthCheck != null) 'health_check': healthCheck?.toJson(),
  'id': id.toJson(),
  'interface_address': interfaceAddress.toJson(),
  if (interfaceAddress6 != null) 'interface_address6': interfaceAddress6?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  'name': name.toJson(),
  if (pskMetadata != null) 'psk_metadata': pskMetadata?.toJson(),
  if (replayProtection != null) 'replay_protection': replayProtection?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cloudflare_endpoint') &&
      json.containsKey('id') &&
      json.containsKey('interface_address') &&
      json.containsKey('name'); } 
MagicIpsecTunnel copyWith({MagicAllowNullCipher Function()? allowNullCipher, MagicAutomaticReturnRouting Function()? automaticReturnRouting, MagicBgpConfig Function()? bgp, MagicBgpStatusWithState Function()? bgpStatus, MagicCloudflareIpsecEndpoint? cloudflareEndpoint, MagicSchemasCreatedOn Function()? createdOn, MagicCustomRemoteIdentities Function()? customRemoteIdentities, MagicCustomerIpsecEndpoint Function()? customerEndpoint, MagicComponentsSchemasDescription Function()? description, MagicTunnelHealthCheck Function()? healthCheck, MagicSchemasIdentifier? id, MagicInterfaceAddress? interfaceAddress, MagicInterfaceAddress6 Function()? interfaceAddress6, MagicSchemasModifiedOn Function()? modifiedOn, MagicIpsecTunnelName? name, MagicPskMetadata Function()? pskMetadata, MagicReplayProtection Function()? replayProtection, }) { return MagicIpsecTunnel(
  allowNullCipher: allowNullCipher != null ? allowNullCipher() : this.allowNullCipher,
  automaticReturnRouting: automaticReturnRouting != null ? automaticReturnRouting() : this.automaticReturnRouting,
  bgp: bgp != null ? bgp() : this.bgp,
  bgpStatus: bgpStatus != null ? bgpStatus() : this.bgpStatus,
  cloudflareEndpoint: cloudflareEndpoint ?? this.cloudflareEndpoint,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  customRemoteIdentities: customRemoteIdentities != null ? customRemoteIdentities() : this.customRemoteIdentities,
  customerEndpoint: customerEndpoint != null ? customerEndpoint() : this.customerEndpoint,
  description: description != null ? description() : this.description,
  healthCheck: healthCheck != null ? healthCheck() : this.healthCheck,
  id: id ?? this.id,
  interfaceAddress: interfaceAddress ?? this.interfaceAddress,
  interfaceAddress6: interfaceAddress6 != null ? interfaceAddress6() : this.interfaceAddress6,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  name: name ?? this.name,
  pskMetadata: pskMetadata != null ? pskMetadata() : this.pskMetadata,
  replayProtection: replayProtection != null ? replayProtection() : this.replayProtection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicIpsecTunnel &&
          allowNullCipher == other.allowNullCipher &&
          automaticReturnRouting == other.automaticReturnRouting &&
          bgp == other.bgp &&
          bgpStatus == other.bgpStatus &&
          cloudflareEndpoint == other.cloudflareEndpoint &&
          createdOn == other.createdOn &&
          customRemoteIdentities == other.customRemoteIdentities &&
          customerEndpoint == other.customerEndpoint &&
          description == other.description &&
          healthCheck == other.healthCheck &&
          id == other.id &&
          interfaceAddress == other.interfaceAddress &&
          interfaceAddress6 == other.interfaceAddress6 &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          pskMetadata == other.pskMetadata &&
          replayProtection == other.replayProtection; } 
@override int get hashCode { return Object.hash(allowNullCipher, automaticReturnRouting, bgp, bgpStatus, cloudflareEndpoint, createdOn, customRemoteIdentities, customerEndpoint, description, healthCheck, id, interfaceAddress, interfaceAddress6, modifiedOn, name, pskMetadata, replayProtection); } 
@override String toString() { return 'MagicIpsecTunnel(allowNullCipher: $allowNullCipher, automaticReturnRouting: $automaticReturnRouting, bgp: $bgp, bgpStatus: $bgpStatus, cloudflareEndpoint: $cloudflareEndpoint, createdOn: $createdOn, customRemoteIdentities: $customRemoteIdentities, customerEndpoint: $customerEndpoint, description: $description, healthCheck: $healthCheck, id: $id, interfaceAddress: $interfaceAddress, interfaceAddress6: $interfaceAddress6, modifiedOn: $modifiedOn, name: $name, pskMetadata: $pskMetadata, replayProtection: $replayProtection)'; } 
 }
