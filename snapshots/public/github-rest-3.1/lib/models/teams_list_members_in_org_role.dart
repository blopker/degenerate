// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TeamsListMembersInOrgRole {const TeamsListMembersInOrgRole._(this.value);

factory TeamsListMembersInOrgRole.fromJson(String json) { return switch (json) {
  'member' => member,
  'maintainer' => maintainer,
  'all' => all,
  _ => TeamsListMembersInOrgRole._(json),
}; }

static const TeamsListMembersInOrgRole member = TeamsListMembersInOrgRole._('member');

static const TeamsListMembersInOrgRole maintainer = TeamsListMembersInOrgRole._('maintainer');

static const TeamsListMembersInOrgRole all = TeamsListMembersInOrgRole._('all');

static const List<TeamsListMembersInOrgRole> values = [member, maintainer, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsListMembersInOrgRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsListMembersInOrgRole($value)'; } 
 }
