// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_cidr.dart';import 'addressing_delegated_account_identifier.dart';import 'addressing_delegation_identifier.dart';import 'addressing_prefix_identifier.dart';import 'addressing_timestamp.dart';@immutable final class AddressingIpamDelegations {const AddressingIpamDelegations({this.cidr, this.createdAt, this.delegatedAccountId, this.id, this.modifiedAt, this.parentPrefixId, });

factory AddressingIpamDelegations.fromJson(Map<String, dynamic> json) { return AddressingIpamDelegations(
  cidr: json['cidr'] != null ? AddressingCidr.fromJson(json['cidr'] as String) : null,
  createdAt: json['created_at'] != null ? AddressingTimestamp.fromJson(json['created_at'] as String) : null,
  delegatedAccountId: json['delegated_account_id'] != null ? AddressingDelegatedAccountIdentifier.fromJson(json['delegated_account_id'] as String) : null,
  id: json['id'] != null ? AddressingDelegationIdentifier.fromJson(json['id'] as String) : null,
  modifiedAt: json['modified_at'] != null ? AddressingTimestamp.fromJson(json['modified_at'] as String) : null,
  parentPrefixId: json['parent_prefix_id'] != null ? AddressingPrefixIdentifier.fromJson(json['parent_prefix_id'] as String) : null,
); }

/// IP Prefix in Classless Inter-Domain Routing format.
final AddressingCidr? cidr;

final AddressingTimestamp? createdAt;

/// Account identifier for the account to which prefix is being delegated.
final AddressingDelegatedAccountIdentifier? delegatedAccountId;

/// Identifier of a Delegation.
final AddressingDelegationIdentifier? id;

final AddressingTimestamp? modifiedAt;

final AddressingPrefixIdentifier? parentPrefixId;

Map<String, dynamic> toJson() { return {
  if (cidr != null) 'cidr': cidr?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (delegatedAccountId != null) 'delegated_account_id': delegatedAccountId?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (modifiedAt != null) 'modified_at': modifiedAt?.toJson(),
  if (parentPrefixId != null) 'parent_prefix_id': parentPrefixId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cidr', 'created_at', 'delegated_account_id', 'id', 'modified_at', 'parent_prefix_id'}.contains(key)); } 
AddressingIpamDelegations copyWith({AddressingCidr Function()? cidr, AddressingTimestamp Function()? createdAt, AddressingDelegatedAccountIdentifier Function()? delegatedAccountId, AddressingDelegationIdentifier Function()? id, AddressingTimestamp Function()? modifiedAt, AddressingPrefixIdentifier Function()? parentPrefixId, }) { return AddressingIpamDelegations(
  cidr: cidr != null ? cidr() : this.cidr,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  delegatedAccountId: delegatedAccountId != null ? delegatedAccountId() : this.delegatedAccountId,
  id: id != null ? id() : this.id,
  modifiedAt: modifiedAt != null ? modifiedAt() : this.modifiedAt,
  parentPrefixId: parentPrefixId != null ? parentPrefixId() : this.parentPrefixId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingIpamDelegations &&
          cidr == other.cidr &&
          createdAt == other.createdAt &&
          delegatedAccountId == other.delegatedAccountId &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          parentPrefixId == other.parentPrefixId; } 
@override int get hashCode { return Object.hash(cidr, createdAt, delegatedAccountId, id, modifiedAt, parentPrefixId); } 
@override String toString() { return 'AddressingIpamDelegations(cidr: $cidr, createdAt: $createdAt, delegatedAccountId: $delegatedAccountId, id: $id, modifiedAt: $modifiedAt, parentPrefixId: $parentPrefixId)'; } 
 }
