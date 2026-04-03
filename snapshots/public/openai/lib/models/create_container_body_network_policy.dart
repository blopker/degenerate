// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'container_network_policy_allowlist_param.dart';import 'container_network_policy_disabled_param.dart';/// Network access policy for the container.
sealed class CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicy();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CreateContainerBodyNetworkPolicy.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'disabled' => CreateContainerBodyNetworkPolicyDisabled.fromJson(json),
  'allowlist' => CreateContainerBodyNetworkPolicyAllowlist.fromJson(json),
  _ => CreateContainerBodyNetworkPolicy$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateContainerBodyNetworkPolicy$Unknown; } 
 }
@immutable final class CreateContainerBodyNetworkPolicyDisabled extends CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicyDisabled(this.containerNetworkPolicyDisabledParam);

factory CreateContainerBodyNetworkPolicyDisabled.fromJson(Map<String, dynamic> json) { return CreateContainerBodyNetworkPolicyDisabled(ContainerNetworkPolicyDisabledParam.fromJson(json)); }

final ContainerNetworkPolicyDisabledParam containerNetworkPolicyDisabledParam;

@override String get type { return 'disabled'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyDisabledParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodyNetworkPolicyDisabled && containerNetworkPolicyDisabledParam == other.containerNetworkPolicyDisabledParam; } 
@override int get hashCode { return containerNetworkPolicyDisabledParam.hashCode; } 
@override String toString() { return 'CreateContainerBodyNetworkPolicyDisabled(containerNetworkPolicyDisabledParam: $containerNetworkPolicyDisabledParam)'; } 
 }
@immutable final class CreateContainerBodyNetworkPolicyAllowlist extends CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicyAllowlist(this.containerNetworkPolicyAllowlistParam);

factory CreateContainerBodyNetworkPolicyAllowlist.fromJson(Map<String, dynamic> json) { return CreateContainerBodyNetworkPolicyAllowlist(ContainerNetworkPolicyAllowlistParam.fromJson(json)); }

final ContainerNetworkPolicyAllowlistParam containerNetworkPolicyAllowlistParam;

@override String get type { return 'allowlist'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyAllowlistParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodyNetworkPolicyAllowlist && containerNetworkPolicyAllowlistParam == other.containerNetworkPolicyAllowlistParam; } 
@override int get hashCode { return containerNetworkPolicyAllowlistParam.hashCode; } 
@override String toString() { return 'CreateContainerBodyNetworkPolicyAllowlist(containerNetworkPolicyAllowlistParam: $containerNetworkPolicyAllowlistParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class CreateContainerBodyNetworkPolicy$Unknown extends CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicy$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodyNetworkPolicy$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateContainerBodyNetworkPolicy.unknown($json)'; } 
 }
