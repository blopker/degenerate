// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_email.dart';import 'iam_member_invitation_status.dart';import 'iam_role_components_schemas_identifier.dart';@immutable final class IamCreateMemberWithRoles {const IamCreateMemberWithRoles({required this.email, required this.roles, this.status, });

factory IamCreateMemberWithRoles.fromJson(Map<String, dynamic> json) { return IamCreateMemberWithRoles(
  email: IamEmail.fromJson(json['email'] as String),
  roles: (json['roles'] as List<dynamic>).map((e) => IamRoleComponentsSchemasIdentifier.fromJson(e as String)).toList(),
  status: json['status'] != null ? IamMemberInvitationStatus.fromJson(json['status'] as String) : null,
); }

final IamEmail email;

/// Array of roles associated with this member.
final List<IamRoleComponentsSchemasIdentifier> roles;

final IamMemberInvitationStatus? status;

Map<String, dynamic> toJson() { return {
  'email': email.toJson(),
  'roles': roles.map((e) => e.toJson()).toList(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') &&
      json.containsKey('roles'); } 
IamCreateMemberWithRoles copyWith({IamEmail? email, List<IamRoleComponentsSchemasIdentifier>? roles, IamMemberInvitationStatus Function()? status, }) { return IamCreateMemberWithRoles(
  email: email ?? this.email,
  roles: roles ?? this.roles,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCreateMemberWithRoles &&
          email == other.email &&
          listEquals(roles, other.roles) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(email, Object.hashAll(roles), status); } 
@override String toString() { return 'IamCreateMemberWithRoles(email: $email, roles: $roles, status: $status)'; } 
 }
