// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_group_membership.dart';/// The groups associated with the account.
final class AccountGroups {const AccountGroups({this.accountGroupMembership});

factory AccountGroups.fromJson(Map<String, dynamic> json) { return AccountGroups(
  accountGroupMembership: AccountGroupMembership.canParse(json) ? AccountGroupMembership.fromJson(json) : null,
); }

final AccountGroupMembership? accountGroupMembership;

/// At least one variant must be present.
bool get isValid { return accountGroupMembership != null; } 
Map<String, dynamic> toJson() { return {
  ...?accountGroupMembership?.toJson(),
}; } 
 }
