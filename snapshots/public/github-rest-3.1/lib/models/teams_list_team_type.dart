// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TeamsListTeamType {const TeamsListTeamType._(this.value);

factory TeamsListTeamType.fromJson(String json) { return switch (json) {
  'all' => all,
  'enterprise' => enterprise,
  'organization' => organization,
  _ => TeamsListTeamType._(json),
}; }

static const TeamsListTeamType all = TeamsListTeamType._('all');

static const TeamsListTeamType enterprise = TeamsListTeamType._('enterprise');

static const TeamsListTeamType organization = TeamsListTeamType._('organization');

static const List<TeamsListTeamType> values = [all, enterprise, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsListTeamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsListTeamType($value)'; } 
 }
