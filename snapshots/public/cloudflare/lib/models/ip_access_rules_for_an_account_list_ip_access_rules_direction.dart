// GENERATED CODE - DO NOT MODIFY BY HAND

/// Defines the direction used to sort returned rules.
final class IpAccessRulesForAnAccountListIpAccessRulesDirection {const IpAccessRulesForAnAccountListIpAccessRulesDirection._(this.value);

factory IpAccessRulesForAnAccountListIpAccessRulesDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => IpAccessRulesForAnAccountListIpAccessRulesDirection._(json),
}; }

static const IpAccessRulesForAnAccountListIpAccessRulesDirection asc = IpAccessRulesForAnAccountListIpAccessRulesDirection._('asc');

static const IpAccessRulesForAnAccountListIpAccessRulesDirection desc = IpAccessRulesForAnAccountListIpAccessRulesDirection._('desc');

static const List<IpAccessRulesForAnAccountListIpAccessRulesDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IpAccessRulesForAnAccountListIpAccessRulesDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IpAccessRulesForAnAccountListIpAccessRulesDirection($value)'; } 
 }
