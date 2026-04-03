// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether to match all search requirements or at least one (any).
@immutable final class UserSOrganizationsListOrganizationsMatch {const UserSOrganizationsListOrganizationsMatch._(this.value);

factory UserSOrganizationsListOrganizationsMatch.fromJson(String json) { return switch (json) {
  'any' => any,
  'all' => all,
  _ => UserSOrganizationsListOrganizationsMatch._(json),
}; }

static const UserSOrganizationsListOrganizationsMatch any = UserSOrganizationsListOrganizationsMatch._('any');

static const UserSOrganizationsListOrganizationsMatch all = UserSOrganizationsListOrganizationsMatch._('all');

static const List<UserSOrganizationsListOrganizationsMatch> values = [any, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserSOrganizationsListOrganizationsMatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserSOrganizationsListOrganizationsMatch($value)'; } 
 }
