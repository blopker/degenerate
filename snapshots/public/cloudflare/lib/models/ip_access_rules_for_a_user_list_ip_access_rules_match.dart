// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines the search requirements. When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
@immutable final class IpAccessRulesForAUserListIpAccessRulesMatch {const IpAccessRulesForAUserListIpAccessRulesMatch._(this.value);

factory IpAccessRulesForAUserListIpAccessRulesMatch.fromJson(String json) { return switch (json) {
  'any' => any,
  'all' => all,
  _ => IpAccessRulesForAUserListIpAccessRulesMatch._(json),
}; }

static const IpAccessRulesForAUserListIpAccessRulesMatch any = IpAccessRulesForAUserListIpAccessRulesMatch._('any');

static const IpAccessRulesForAUserListIpAccessRulesMatch all = IpAccessRulesForAUserListIpAccessRulesMatch._('all');

static const List<IpAccessRulesForAUserListIpAccessRulesMatch> values = [any, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IpAccessRulesForAUserListIpAccessRulesMatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IpAccessRulesForAUserListIpAccessRulesMatch($value)'; } 
 }
