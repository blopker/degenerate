// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When a binding has been deployed to a majority of Cloudflare datacenters, the binding will become active and can be used with its associated service.
/// 
@immutable final class AddressingProvisioningState {const AddressingProvisioningState._(this.value);

factory AddressingProvisioningState.fromJson(String json) { return switch (json) {
  'provisioning' => provisioning,
  'active' => active,
  _ => AddressingProvisioningState._(json),
}; }

static const AddressingProvisioningState provisioning = AddressingProvisioningState._('provisioning');

static const AddressingProvisioningState active = AddressingProvisioningState._('active');

static const List<AddressingProvisioningState> values = [provisioning, active];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AddressingProvisioningState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AddressingProvisioningState($value)'; } 
 }
/// Status of a Service Binding's deployment to the Cloudflare network
@immutable final class AddressingProvisioning {const AddressingProvisioning({this.state});

factory AddressingProvisioning.fromJson(Map<String, dynamic> json) { return AddressingProvisioning(
  state: json['state'] != null ? AddressingProvisioningState.fromJson(json['state'] as String) : null,
); }

/// When a binding has been deployed to a majority of Cloudflare datacenters, the binding will become active and can be used with its associated service.
/// 
final AddressingProvisioningState? state;

Map<String, dynamic> toJson() { return {
  if (state != null) 'state': state?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'state'}.contains(key)); } 
AddressingProvisioning copyWith({AddressingProvisioningState Function()? state}) { return AddressingProvisioning(
  state: state != null ? state() : this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingProvisioning &&
          state == other.state; } 
@override int get hashCode { return state.hashCode; } 
@override String toString() { return 'AddressingProvisioning(state: $state)'; } 
 }
