// GENERATED CODE - DO NOT MODIFY BY HAND

import 'container_network_policy_allowlist_param.dart';import 'container_network_policy_disabled_param.dart';/// Network access policy for the container.
sealed class CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicy();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CreateContainerBodyNetworkPolicy.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'ContainerNetworkPolicyDisabledParam' => CreateContainerBodyNetworkPolicyContainerNetworkPolicyDisabledParam.fromJson(json),
  'ContainerNetworkPolicyAllowlistParam' => CreateContainerBodyNetworkPolicyContainerNetworkPolicyAllowlistParam.fromJson(json),
  _ => CreateContainerBodyNetworkPolicy$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateContainerBodyNetworkPolicy$Unknown; } 
 }
final class CreateContainerBodyNetworkPolicyContainerNetworkPolicyDisabledParam extends CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicyContainerNetworkPolicyDisabledParam(this.containerNetworkPolicyDisabledParam);

factory CreateContainerBodyNetworkPolicyContainerNetworkPolicyDisabledParam.fromJson(Map<String, dynamic> json) { return CreateContainerBodyNetworkPolicyContainerNetworkPolicyDisabledParam(ContainerNetworkPolicyDisabledParam.fromJson(json)); }

final ContainerNetworkPolicyDisabledParam containerNetworkPolicyDisabledParam;

@override String get type { return 'ContainerNetworkPolicyDisabledParam'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyDisabledParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodyNetworkPolicyContainerNetworkPolicyDisabledParam && containerNetworkPolicyDisabledParam == other.containerNetworkPolicyDisabledParam; } 
@override int get hashCode { return containerNetworkPolicyDisabledParam.hashCode; } 
@override String toString() { return 'CreateContainerBodyNetworkPolicyContainerNetworkPolicyDisabledParam(containerNetworkPolicyDisabledParam: $containerNetworkPolicyDisabledParam)'; } 
 }
final class CreateContainerBodyNetworkPolicyContainerNetworkPolicyAllowlistParam extends CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicyContainerNetworkPolicyAllowlistParam(this.containerNetworkPolicyAllowlistParam);

factory CreateContainerBodyNetworkPolicyContainerNetworkPolicyAllowlistParam.fromJson(Map<String, dynamic> json) { return CreateContainerBodyNetworkPolicyContainerNetworkPolicyAllowlistParam(ContainerNetworkPolicyAllowlistParam.fromJson(json)); }

final ContainerNetworkPolicyAllowlistParam containerNetworkPolicyAllowlistParam;

@override String get type { return 'ContainerNetworkPolicyAllowlistParam'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyAllowlistParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodyNetworkPolicyContainerNetworkPolicyAllowlistParam && containerNetworkPolicyAllowlistParam == other.containerNetworkPolicyAllowlistParam; } 
@override int get hashCode { return containerNetworkPolicyAllowlistParam.hashCode; } 
@override String toString() { return 'CreateContainerBodyNetworkPolicyContainerNetworkPolicyAllowlistParam(containerNetworkPolicyAllowlistParam: $containerNetworkPolicyAllowlistParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CreateContainerBodyNetworkPolicy$Unknown extends CreateContainerBodyNetworkPolicy {const CreateContainerBodyNetworkPolicy$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodyNetworkPolicy$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateContainerBodyNetworkPolicy.unknown($json)'; } 
 }
