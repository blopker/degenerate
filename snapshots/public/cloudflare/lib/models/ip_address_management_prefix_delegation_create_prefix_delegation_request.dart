// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_cidr.dart';import 'addressing_delegated_account_identifier.dart';@immutable final class IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest {const IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest({required this.cidr, required this.delegatedAccountId, });

factory IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest.fromJson(Map<String, dynamic> json) { return IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest(
  cidr: AddressingCidr.fromJson(json['cidr'] as String),
  delegatedAccountId: AddressingDelegatedAccountIdentifier.fromJson(json['delegated_account_id'] as String),
); }

/// IP Prefix in Classless Inter-Domain Routing format.
final AddressingCidr cidr;

/// Account identifier for the account to which prefix is being delegated.
final AddressingDelegatedAccountIdentifier delegatedAccountId;

Map<String, dynamic> toJson() { return {
  'cidr': cidr.toJson(),
  'delegated_account_id': delegatedAccountId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cidr') &&
      json.containsKey('delegated_account_id'); } 
IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest copyWith({AddressingCidr? cidr, AddressingDelegatedAccountIdentifier? delegatedAccountId, }) { return IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest(
  cidr: cidr ?? this.cidr,
  delegatedAccountId: delegatedAccountId ?? this.delegatedAccountId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest &&
          cidr == other.cidr &&
          delegatedAccountId == other.delegatedAccountId; } 
@override int get hashCode { return Object.hash(cidr, delegatedAccountId); } 
@override String toString() { return 'IpAddressManagementPrefixDelegationCreatePrefixDelegationRequest(cidr: $cidr, delegatedAccountId: $delegatedAccountId)'; } 
 }
