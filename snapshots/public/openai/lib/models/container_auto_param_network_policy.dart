// GENERATED CODE - DO NOT MODIFY BY HAND

import 'container_network_policy_allowlist_param.dart';import 'container_network_policy_disabled_param.dart';/// Network access policy for the container.
sealed class ContainerAutoParamNetworkPolicy {const ContainerAutoParamNetworkPolicy();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ContainerAutoParamNetworkPolicy.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'disabled' => ContainerAutoParamNetworkPolicyDisabled.fromJson(json),
  'allowlist' => ContainerAutoParamNetworkPolicyAllowlist.fromJson(json),
  _ => ContainerAutoParamNetworkPolicy$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ContainerAutoParamNetworkPolicy$Unknown; } 
 }
final class ContainerAutoParamNetworkPolicyDisabled extends ContainerAutoParamNetworkPolicy {const ContainerAutoParamNetworkPolicyDisabled(this.containerNetworkPolicyDisabledParam);

factory ContainerAutoParamNetworkPolicyDisabled.fromJson(Map<String, dynamic> json) { return ContainerAutoParamNetworkPolicyDisabled(ContainerNetworkPolicyDisabledParam.fromJson(json)); }

final ContainerNetworkPolicyDisabledParam containerNetworkPolicyDisabledParam;

@override String get type { return 'disabled'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyDisabledParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerAutoParamNetworkPolicyDisabled && containerNetworkPolicyDisabledParam == other.containerNetworkPolicyDisabledParam; } 
@override int get hashCode { return containerNetworkPolicyDisabledParam.hashCode; } 
@override String toString() { return 'ContainerAutoParamNetworkPolicyDisabled(containerNetworkPolicyDisabledParam: $containerNetworkPolicyDisabledParam)'; } 
 }
final class ContainerAutoParamNetworkPolicyAllowlist extends ContainerAutoParamNetworkPolicy {const ContainerAutoParamNetworkPolicyAllowlist(this.containerNetworkPolicyAllowlistParam);

factory ContainerAutoParamNetworkPolicyAllowlist.fromJson(Map<String, dynamic> json) { return ContainerAutoParamNetworkPolicyAllowlist(ContainerNetworkPolicyAllowlistParam.fromJson(json)); }

final ContainerNetworkPolicyAllowlistParam containerNetworkPolicyAllowlistParam;

@override String get type { return 'allowlist'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyAllowlistParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerAutoParamNetworkPolicyAllowlist && containerNetworkPolicyAllowlistParam == other.containerNetworkPolicyAllowlistParam; } 
@override int get hashCode { return containerNetworkPolicyAllowlistParam.hashCode; } 
@override String toString() { return 'ContainerAutoParamNetworkPolicyAllowlist(containerNetworkPolicyAllowlistParam: $containerNetworkPolicyAllowlistParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ContainerAutoParamNetworkPolicy$Unknown extends ContainerAutoParamNetworkPolicy {const ContainerAutoParamNetworkPolicy$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerAutoParamNetworkPolicy$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ContainerAutoParamNetworkPolicy.unknown($json)'; } 
 }
