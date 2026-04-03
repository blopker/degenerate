// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'container_network_policy_allowlist_param.dart';import 'container_network_policy_disabled_param.dart';/// Network access policy for the container.
sealed class AutoCodeInterpreterToolParamNetworkPolicy {const AutoCodeInterpreterToolParamNetworkPolicy();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory AutoCodeInterpreterToolParamNetworkPolicy.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'disabled' => AutoCodeInterpreterToolParamNetworkPolicyDisabled.fromJson(json),
  'allowlist' => AutoCodeInterpreterToolParamNetworkPolicyAllowlist.fromJson(json),
  _ => AutoCodeInterpreterToolParamNetworkPolicy$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is AutoCodeInterpreterToolParamNetworkPolicy$Unknown; } 
 }
@immutable final class AutoCodeInterpreterToolParamNetworkPolicyDisabled extends AutoCodeInterpreterToolParamNetworkPolicy {const AutoCodeInterpreterToolParamNetworkPolicyDisabled(this.containerNetworkPolicyDisabledParam);

factory AutoCodeInterpreterToolParamNetworkPolicyDisabled.fromJson(Map<String, dynamic> json) { return AutoCodeInterpreterToolParamNetworkPolicyDisabled(ContainerNetworkPolicyDisabledParam.fromJson(json)); }

final ContainerNetworkPolicyDisabledParam containerNetworkPolicyDisabledParam;

@override String get type { return 'disabled'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyDisabledParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoCodeInterpreterToolParamNetworkPolicyDisabled && containerNetworkPolicyDisabledParam == other.containerNetworkPolicyDisabledParam; } 
@override int get hashCode { return containerNetworkPolicyDisabledParam.hashCode; } 
@override String toString() { return 'AutoCodeInterpreterToolParamNetworkPolicyDisabled(containerNetworkPolicyDisabledParam: $containerNetworkPolicyDisabledParam)'; } 
 }
@immutable final class AutoCodeInterpreterToolParamNetworkPolicyAllowlist extends AutoCodeInterpreterToolParamNetworkPolicy {const AutoCodeInterpreterToolParamNetworkPolicyAllowlist(this.containerNetworkPolicyAllowlistParam);

factory AutoCodeInterpreterToolParamNetworkPolicyAllowlist.fromJson(Map<String, dynamic> json) { return AutoCodeInterpreterToolParamNetworkPolicyAllowlist(ContainerNetworkPolicyAllowlistParam.fromJson(json)); }

final ContainerNetworkPolicyAllowlistParam containerNetworkPolicyAllowlistParam;

@override String get type { return 'allowlist'; } 
@override Map<String, dynamic> toJson() { return {...containerNetworkPolicyAllowlistParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoCodeInterpreterToolParamNetworkPolicyAllowlist && containerNetworkPolicyAllowlistParam == other.containerNetworkPolicyAllowlistParam; } 
@override int get hashCode { return containerNetworkPolicyAllowlistParam.hashCode; } 
@override String toString() { return 'AutoCodeInterpreterToolParamNetworkPolicyAllowlist(containerNetworkPolicyAllowlistParam: $containerNetworkPolicyAllowlistParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class AutoCodeInterpreterToolParamNetworkPolicy$Unknown extends AutoCodeInterpreterToolParamNetworkPolicy {const AutoCodeInterpreterToolParamNetworkPolicy$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoCodeInterpreterToolParamNetworkPolicy$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'AutoCodeInterpreterToolParamNetworkPolicy.unknown($json)'; } 
 }
