// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_address_map_identifier.dart';import 'addressing_can_delete.dart';import 'addressing_can_modify_ips.dart';import 'addressing_default_sni.dart';import 'addressing_enabled.dart';import 'addressing_schemas_description.dart';import 'addressing_timestamp.dart';@immutable final class AddressingAddressMaps {const AddressingAddressMaps({this.canDelete, this.canModifyIps, this.createdAt, this.defaultSni = const Omittable.absent(), this.description = const Omittable.absent(), this.enabled = const Omittable.absent(), this.id, this.modifiedAt, });

factory AddressingAddressMaps.fromJson(Map<String, dynamic> json) { return AddressingAddressMaps(
  canDelete: json['can_delete'] != null ? AddressingCanDelete.fromJson(json['can_delete'] as bool) : null,
  canModifyIps: json['can_modify_ips'] != null ? AddressingCanModifyIps.fromJson(json['can_modify_ips'] as bool) : null,
  createdAt: json['created_at'] != null ? AddressingTimestamp.fromJson(json['created_at'] as String) : null,
  defaultSni: json.containsKey('default_sni') ? Omittable(json['default_sni'] != null ? AddressingDefaultSni.fromJson(json['default_sni'] as String) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] != null ? AddressingSchemasDescription.fromJson(json['description'] as String) : null) : const Omittable.absent(),
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] != null ? AddressingEnabled.fromJson(json['enabled'] as bool) : null) : const Omittable.absent(),
  id: json['id'] != null ? AddressingAddressMapIdentifier.fromJson(json['id'] as String) : null,
  modifiedAt: json['modified_at'] != null ? AddressingTimestamp.fromJson(json['modified_at'] as String) : null,
); }

final AddressingCanDelete? canDelete;

final AddressingCanModifyIps? canModifyIps;

final AddressingTimestamp? createdAt;

final Omittable<AddressingDefaultSni?> defaultSni;

final Omittable<AddressingSchemasDescription?> description;

final Omittable<AddressingEnabled?> enabled;

final AddressingAddressMapIdentifier? id;

final AddressingTimestamp? modifiedAt;

Map<String, dynamic> toJson() { return {
  if (canDelete != null) 'can_delete': canDelete?.toJson(),
  if (canModifyIps != null) 'can_modify_ips': canModifyIps?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (defaultSni.isPresent) 'default_sni': defaultSni.value?.toJson(),
  if (description.isPresent) 'description': description.value?.toJson(),
  if (enabled.isPresent) 'enabled': enabled.value?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (modifiedAt != null) 'modified_at': modifiedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'can_delete', 'can_modify_ips', 'created_at', 'default_sni', 'description', 'enabled', 'id', 'modified_at'}.contains(key)); } 
AddressingAddressMaps copyWith({AddressingCanDelete? Function()? canDelete, AddressingCanModifyIps? Function()? canModifyIps, AddressingTimestamp? Function()? createdAt, Omittable<AddressingDefaultSni?>? defaultSni, Omittable<AddressingSchemasDescription?>? description, Omittable<AddressingEnabled?>? enabled, AddressingAddressMapIdentifier? Function()? id, AddressingTimestamp? Function()? modifiedAt, }) { return AddressingAddressMaps(
  canDelete: canDelete != null ? canDelete() : this.canDelete,
  canModifyIps: canModifyIps != null ? canModifyIps() : this.canModifyIps,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  defaultSni: defaultSni ?? this.defaultSni,
  description: description ?? this.description,
  enabled: enabled ?? this.enabled,
  id: id != null ? id() : this.id,
  modifiedAt: modifiedAt != null ? modifiedAt() : this.modifiedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingAddressMaps &&
          canDelete == other.canDelete &&
          canModifyIps == other.canModifyIps &&
          createdAt == other.createdAt &&
          defaultSni == other.defaultSni &&
          description == other.description &&
          enabled == other.enabled &&
          id == other.id &&
          modifiedAt == other.modifiedAt; } 
@override int get hashCode { return Object.hash(canDelete, canModifyIps, createdAt, defaultSni, description, enabled, id, modifiedAt); } 
@override String toString() { return 'AddressingAddressMaps(canDelete: $canDelete, canModifyIps: $canModifyIps, createdAt: $createdAt, defaultSni: $defaultSni, description: $description, enabled: $enabled, id: $id, modifiedAt: $modifiedAt)'; } 
 }
