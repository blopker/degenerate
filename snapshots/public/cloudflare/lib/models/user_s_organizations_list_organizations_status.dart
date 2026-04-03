// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether the user is a member of the organization or has an inivitation pending.
@immutable final class UserSOrganizationsListOrganizationsStatus {const UserSOrganizationsListOrganizationsStatus._(this.value);

factory UserSOrganizationsListOrganizationsStatus.fromJson(String json) { return switch (json) {
  'member' => member,
  'invited' => invited,
  _ => UserSOrganizationsListOrganizationsStatus._(json),
}; }

static const UserSOrganizationsListOrganizationsStatus member = UserSOrganizationsListOrganizationsStatus._('member');

static const UserSOrganizationsListOrganizationsStatus invited = UserSOrganizationsListOrganizationsStatus._('invited');

static const List<UserSOrganizationsListOrganizationsStatus> values = [member, invited];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserSOrganizationsListOrganizationsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserSOrganizationsListOrganizationsStatus($value)'; } 
 }
