// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_address_map_identifier.dart';import 'addressing_address_maps_ip.dart';import 'addressing_address_maps_membership.dart';import 'addressing_can_delete.dart';import 'addressing_can_modify_ips.dart';import 'addressing_default_sni.dart';import 'addressing_enabled.dart';import 'addressing_schemas_description.dart';import 'addressing_timestamp.dart';@immutable final class AddressingFullResponseResult {const AddressingFullResponseResult({this.canDelete, this.canModifyIps, this.createdAt, this.defaultSni, this.description, this.enabled, this.id, this.modifiedAt, this.ips, this.memberships, });

factory AddressingFullResponseResult.fromJson(Map<String, dynamic> json) { return AddressingFullResponseResult(
  canDelete: json['can_delete'] != null ? AddressingCanDelete.fromJson(json['can_delete'] as bool) : null,
  canModifyIps: json['can_modify_ips'] != null ? AddressingCanModifyIps.fromJson(json['can_modify_ips'] as bool) : null,
  createdAt: json['created_at'] != null ? AddressingTimestamp.fromJson(json['created_at'] as String) : null,
  defaultSni: json['default_sni'] != null ? AddressingDefaultSni.fromJson(json['default_sni'] as String) : null,
  description: json['description'] != null ? AddressingSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? AddressingEnabled.fromJson(json['enabled'] as bool) : null,
  id: json['id'] != null ? AddressingAddressMapIdentifier.fromJson(json['id'] as String) : null,
  modifiedAt: json['modified_at'] != null ? AddressingTimestamp.fromJson(json['modified_at'] as String) : null,
  ips: (json['ips'] as List<dynamic>?)?.map((e) => AddressingAddressMapsIp.fromJson(e as Map<String, dynamic>)).toList(),
  memberships: (json['memberships'] as List<dynamic>?)?.map((e) => AddressingAddressMapsMembership.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
final AddressingCanDelete? canDelete;

/// If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
final AddressingCanModifyIps? canModifyIps;

final AddressingTimestamp? createdAt;

/// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
final AddressingDefaultSni? defaultSni;

final AddressingSchemasDescription? description;

/// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
final AddressingEnabled? enabled;

/// Identifier of an Address Map.
final AddressingAddressMapIdentifier? id;

final AddressingTimestamp? modifiedAt;

final List<AddressingAddressMapsIp>? ips;

final List<AddressingAddressMapsMembership>? memberships;

Map<String, dynamic> toJson() { return {
  if (canDelete != null) 'can_delete': canDelete?.toJson(),
  if (canModifyIps != null) 'can_modify_ips': canModifyIps?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (defaultSni != null) 'default_sni': defaultSni?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (modifiedAt != null) 'modified_at': modifiedAt?.toJson(),
  if (ips != null) 'ips': ips?.map((e) => e.toJson()).toList(),
  if (memberships != null) 'memberships': memberships?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'can_delete', 'can_modify_ips', 'created_at', 'default_sni', 'description', 'enabled', 'id', 'modified_at', 'ips', 'memberships'}.contains(key)); } 
AddressingFullResponseResult copyWith({AddressingCanDelete Function()? canDelete, AddressingCanModifyIps Function()? canModifyIps, AddressingTimestamp Function()? createdAt, AddressingDefaultSni? Function()? defaultSni, AddressingSchemasDescription? Function()? description, AddressingEnabled? Function()? enabled, AddressingAddressMapIdentifier Function()? id, AddressingTimestamp Function()? modifiedAt, List<AddressingAddressMapsIp> Function()? ips, List<AddressingAddressMapsMembership> Function()? memberships, }) { return AddressingFullResponseResult(
  canDelete: canDelete != null ? canDelete() : this.canDelete,
  canModifyIps: canModifyIps != null ? canModifyIps() : this.canModifyIps,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  defaultSni: defaultSni != null ? defaultSni() : this.defaultSni,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  id: id != null ? id() : this.id,
  modifiedAt: modifiedAt != null ? modifiedAt() : this.modifiedAt,
  ips: ips != null ? ips() : this.ips,
  memberships: memberships != null ? memberships() : this.memberships,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingFullResponseResult &&
          canDelete == other.canDelete &&
          canModifyIps == other.canModifyIps &&
          createdAt == other.createdAt &&
          defaultSni == other.defaultSni &&
          description == other.description &&
          enabled == other.enabled &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          listEquals(ips, other.ips) &&
          listEquals(memberships, other.memberships); } 
@override int get hashCode { return Object.hash(canDelete, canModifyIps, createdAt, defaultSni, description, enabled, id, modifiedAt, Object.hashAll(ips ?? const []), Object.hashAll(memberships ?? const [])); } 
@override String toString() { return 'AddressingFullResponseResult(canDelete: $canDelete, canModifyIps: $canModifyIps, createdAt: $createdAt, defaultSni: $defaultSni, description: $description, enabled: $enabled, id: $id, modifiedAt: $modifiedAt, ips: $ips, memberships: $memberships)'; } 
 }
