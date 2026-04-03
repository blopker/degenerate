// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The role to give the user in the organization. Can be one of:
///  * `admin` - The user will become an owner of the organization.
///  * `member` - The user will become a non-owner member of the organization.
@immutable final class OrgsSetMembershipForUserRequestRole {const OrgsSetMembershipForUserRequestRole._(this.value);

factory OrgsSetMembershipForUserRequestRole.fromJson(String json) { return switch (json) {
  'admin' => admin,
  'member' => member,
  _ => OrgsSetMembershipForUserRequestRole._(json),
}; }

static const OrgsSetMembershipForUserRequestRole admin = OrgsSetMembershipForUserRequestRole._('admin');

static const OrgsSetMembershipForUserRequestRole member = OrgsSetMembershipForUserRequestRole._('member');

static const List<OrgsSetMembershipForUserRequestRole> values = [admin, member];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsSetMembershipForUserRequestRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsSetMembershipForUserRequestRole($value)'; } 
 }
@immutable final class OrgsSetMembershipForUserRequest {const OrgsSetMembershipForUserRequest({this.role = OrgsSetMembershipForUserRequestRole.member});

factory OrgsSetMembershipForUserRequest.fromJson(Map<String, dynamic> json) { return OrgsSetMembershipForUserRequest(
  role: json.containsKey('role') ? OrgsSetMembershipForUserRequestRole.fromJson(json['role'] as String) : OrgsSetMembershipForUserRequestRole.member,
); }

/// The role to give the user in the organization. Can be one of:
///  * `admin` - The user will become an owner of the organization.
///  * `member` - The user will become a non-owner member of the organization.
final OrgsSetMembershipForUserRequestRole role;

Map<String, dynamic> toJson() { return {
  'role': role.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'role'}.contains(key)); } 
OrgsSetMembershipForUserRequest copyWith({OrgsSetMembershipForUserRequestRole Function()? role}) { return OrgsSetMembershipForUserRequest(
  role: role != null ? role() : this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsSetMembershipForUserRequest &&
          role == other.role; } 
@override int get hashCode { return role.hashCode; } 
@override String toString() { return 'OrgsSetMembershipForUserRequest(role: $role)'; } 
 }
