// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The direction used to sort returned rules.
@immutable final class IpAccessRulesForAZoneListIpAccessRulesDirection {const IpAccessRulesForAZoneListIpAccessRulesDirection._(this.value);

factory IpAccessRulesForAZoneListIpAccessRulesDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => IpAccessRulesForAZoneListIpAccessRulesDirection._(json),
}; }

static const IpAccessRulesForAZoneListIpAccessRulesDirection asc = IpAccessRulesForAZoneListIpAccessRulesDirection._('asc');

static const IpAccessRulesForAZoneListIpAccessRulesDirection desc = IpAccessRulesForAZoneListIpAccessRulesDirection._('desc');

static const List<IpAccessRulesForAZoneListIpAccessRulesDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IpAccessRulesForAZoneListIpAccessRulesDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IpAccessRulesForAZoneListIpAccessRulesDirection($value)'; } 
 }
