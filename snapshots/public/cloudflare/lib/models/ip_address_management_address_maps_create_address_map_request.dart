// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_address_maps_membership_request.dart';import 'addressing_enabled.dart';import 'addressing_ip_address.dart';import 'addressing_schemas_description.dart';@immutable final class IpAddressManagementAddressMapsCreateAddressMapRequest {const IpAddressManagementAddressMapsCreateAddressMapRequest({this.description, this.enabled, this.ips, this.memberships, });

factory IpAddressManagementAddressMapsCreateAddressMapRequest.fromJson(Map<String, dynamic> json) { return IpAddressManagementAddressMapsCreateAddressMapRequest(
  description: json['description'] != null ? AddressingSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? AddressingEnabled.fromJson(json['enabled'] as bool) : null,
  ips: (json['ips'] as List<dynamic>?)?.map((e) => AddressingIpAddress.fromJson(e as String)).toList(),
  memberships: (json['memberships'] as List<dynamic>?)?.map((e) => AddressingAddressMapsMembershipRequest.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// An optional description field which may be used to describe the types of IPs or zones on the map.
final AddressingSchemasDescription? description;

/// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
final AddressingEnabled? enabled;

final List<AddressingIpAddress>? ips;

/// Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
final List<AddressingAddressMapsMembershipRequest>? memberships;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (ips != null) 'ips': ips?.map((e) => e.toJson()).toList(),
  if (memberships != null) 'memberships': memberships?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'enabled', 'ips', 'memberships'}.contains(key)); } 
IpAddressManagementAddressMapsCreateAddressMapRequest copyWith({AddressingSchemasDescription? Function()? description, AddressingEnabled? Function()? enabled, List<AddressingIpAddress> Function()? ips, List<AddressingAddressMapsMembershipRequest> Function()? memberships, }) { return IpAddressManagementAddressMapsCreateAddressMapRequest(
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  ips: ips != null ? ips() : this.ips,
  memberships: memberships != null ? memberships() : this.memberships,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementAddressMapsCreateAddressMapRequest &&
          description == other.description &&
          enabled == other.enabled &&
          listEquals(ips, other.ips) &&
          listEquals(memberships, other.memberships); } 
@override int get hashCode { return Object.hash(description, enabled, Object.hashAll(ips ?? const []), Object.hashAll(memberships ?? const [])); } 
@override String toString() { return 'IpAddressManagementAddressMapsCreateAddressMapRequest(description: $description, enabled: $enabled, ips: $ips, memberships: $memberships)'; } 
 }
