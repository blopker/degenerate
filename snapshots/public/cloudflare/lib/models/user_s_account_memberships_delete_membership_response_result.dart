// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_membership_components_schemas_identifier.dart';final class UserSAccountMembershipsDeleteMembershipResponseResult {const UserSAccountMembershipsDeleteMembershipResponseResult({this.id});

factory UserSAccountMembershipsDeleteMembershipResponseResult.fromJson(Map<String, dynamic> json) { return UserSAccountMembershipsDeleteMembershipResponseResult(
  id: json['id'] != null ? IamMembershipComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
); }

/// Membership identifier tag.
final IamMembershipComponentsSchemasIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
UserSAccountMembershipsDeleteMembershipResponseResult copyWith({IamMembershipComponentsSchemasIdentifier Function()? id}) { return UserSAccountMembershipsDeleteMembershipResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserSAccountMembershipsDeleteMembershipResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'UserSAccountMembershipsDeleteMembershipResponseResult(id: $id)'; } 
 }
