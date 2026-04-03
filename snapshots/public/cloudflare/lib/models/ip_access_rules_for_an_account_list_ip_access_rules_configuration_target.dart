// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines the target to search in existing rules.
@immutable final class IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget {const IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget._(this.value);

factory IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget.fromJson(String json) { return switch (json) {
  'ip' => ip,
  'ip_range' => ipRange,
  'asn' => asn,
  'country' => country,
  _ => IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget._(json),
}; }

static const IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget ip = IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget._('ip');

static const IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget ipRange = IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget._('ip_range');

static const IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget asn = IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget._('asn');

static const IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget country = IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget._('country');

static const List<IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget> values = [ip, ipRange, asn, country];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IpAccessRulesForAnAccountListIpAccessRulesConfigurationTarget($value)'; } 
 }
