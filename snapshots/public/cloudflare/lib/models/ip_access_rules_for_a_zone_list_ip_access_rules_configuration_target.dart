// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The target to search in existing rules.
@immutable final class IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget {const IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget._(this.value);

factory IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget.fromJson(String json) { return switch (json) {
  'ip' => ip,
  'ip_range' => ipRange,
  'asn' => asn,
  'country' => country,
  _ => IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget._(json),
}; }

static const IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget ip = IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget._('ip');

static const IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget ipRange = IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget._('ip_range');

static const IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget asn = IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget._('asn');

static const IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget country = IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget._('country');

static const List<IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget> values = [ip, ipRange, asn, country];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget($value)'; } 
 }
