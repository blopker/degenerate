// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_enabled.dart';import 'iam_account.dart';import 'iam_membership_components_schemas_identifier.dart';import 'iam_permissions.dart';import 'iam_schemas_status.dart';@immutable final class IamMembership {const IamMembership({this.account, this.apiAccessEnabled, this.id, this.permissions, this.roles, this.status, });

factory IamMembership.fromJson(Map<String, dynamic> json) { return IamMembership(
  account: json['account'] != null ? IamAccount.fromJson(json['account'] as Map<String, dynamic>) : null,
  apiAccessEnabled: json['api_access_enabled'] != null ? AccessEnabled.fromJson(json['api_access_enabled'] as bool) : null,
  id: json['id'] != null ? IamMembershipComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  permissions: json['permissions'] != null ? IamPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
  status: json['status'] != null ? IamSchemasStatus.fromJson(json['status'] as String) : null,
); }

final IamAccount? account;

/// Enterprise only. Indicates whether or not API access is enabled specifically for this user on a given account.
final AccessEnabled? apiAccessEnabled;

final IamMembershipComponentsSchemasIdentifier? id;

/// All access permissions for the user at the account.
final IamPermissions? permissions;

final List<String>? roles;

final IamSchemasStatus? status;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
  if (apiAccessEnabled != null) 'api_access_enabled': apiAccessEnabled?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (permissions != null) 'permissions': permissions?.toJson(),
  'roles': ?roles,
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account', 'api_access_enabled', 'id', 'permissions', 'roles', 'status'}.contains(key)); } 
IamMembership copyWith({IamAccount Function()? account, AccessEnabled? Function()? apiAccessEnabled, IamMembershipComponentsSchemasIdentifier Function()? id, IamPermissions Function()? permissions, List<String> Function()? roles, IamSchemasStatus Function()? status, }) { return IamMembership(
  account: account != null ? account() : this.account,
  apiAccessEnabled: apiAccessEnabled != null ? apiAccessEnabled() : this.apiAccessEnabled,
  id: id != null ? id() : this.id,
  permissions: permissions != null ? permissions() : this.permissions,
  roles: roles != null ? roles() : this.roles,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamMembership &&
          account == other.account &&
          apiAccessEnabled == other.apiAccessEnabled &&
          id == other.id &&
          permissions == other.permissions &&
          listEquals(roles, other.roles) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(account, apiAccessEnabled, id, permissions, Object.hashAll(roles ?? const []), status); } 
@override String toString() { return 'IamMembership(account: $account, apiAccessEnabled: $apiAccessEnabled, id: $id, permissions: $permissions, roles: $roles, status: $status)'; } 
 }
