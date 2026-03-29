// GENERATED CODE - DO NOT MODIFY BY HAND

/// The configuration target. You must set the target to `ip_range` when specifying an IP address range in the Zone Lockdown rule.
final class FirewallSchemasCidrConfigurationTarget {const FirewallSchemasCidrConfigurationTarget._(this.value);

factory FirewallSchemasCidrConfigurationTarget.fromJson(String json) { return switch (json) {
  'ip_range' => ipRange,
  _ => FirewallSchemasCidrConfigurationTarget._(json),
}; }

static const FirewallSchemasCidrConfigurationTarget ipRange = FirewallSchemasCidrConfigurationTarget._('ip_range');

static const List<FirewallSchemasCidrConfigurationTarget> values = [ipRange];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallSchemasCidrConfigurationTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallSchemasCidrConfigurationTarget($value)'; } 
 }
final class FirewallSchemasCidrConfiguration {const FirewallSchemasCidrConfiguration({this.target, this.value, });

factory FirewallSchemasCidrConfiguration.fromJson(Map<String, dynamic> json) { return FirewallSchemasCidrConfiguration(
  target: json['target'] != null ? FirewallSchemasCidrConfigurationTarget.fromJson(json['target'] as String) : null,
  value: json['value'] as String?,
); }

/// The configuration target. You must set the target to `ip_range` when specifying an IP address range in the Zone Lockdown rule.
final FirewallSchemasCidrConfigurationTarget? target;

/// The IP address range to match. You can only use prefix lengths `/16` and `/24`.
final String? value;

Map<String, dynamic> toJson() { return {
  if (target != null) 'target': target?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
FirewallSchemasCidrConfiguration copyWith({FirewallSchemasCidrConfigurationTarget Function()? target, String Function()? value, }) { return FirewallSchemasCidrConfiguration(
  target: target != null ? target() : this.target,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallSchemasCidrConfiguration &&
          target == other.target &&
          value == other.value; } 
@override int get hashCode { return Object.hash(target, value); } 
@override String toString() { return 'FirewallSchemasCidrConfiguration(target: $target, value: $value)'; } 
 }
