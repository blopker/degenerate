// GENERATED CODE - DO NOT MODIFY BY HAND

/// The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
final class FirewallIpConfigurationTarget {const FirewallIpConfigurationTarget._(this.value);

factory FirewallIpConfigurationTarget.fromJson(String json) { return switch (json) {
  'ip' => ip,
  _ => FirewallIpConfigurationTarget._(json),
}; }

static const FirewallIpConfigurationTarget ip = FirewallIpConfigurationTarget._('ip');

static const List<FirewallIpConfigurationTarget> values = [ip];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallIpConfigurationTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallIpConfigurationTarget($value)'; } 
 }
final class FirewallIpConfiguration {const FirewallIpConfiguration({this.target, this.value, });

factory FirewallIpConfiguration.fromJson(Map<String, dynamic> json) { return FirewallIpConfiguration(
  target: json['target'] != null ? FirewallIpConfigurationTarget.fromJson(json['target'] as String) : null,
  value: json['value'] as String?,
); }

/// The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
final FirewallIpConfigurationTarget? target;

/// The IP address to match. This address will be compared to the IP address of incoming requests.
final String? value;

Map<String, dynamic> toJson() { return {
  if (target != null) 'target': target?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
FirewallIpConfiguration copyWith({FirewallIpConfigurationTarget Function()? target, String Function()? value, }) { return FirewallIpConfiguration(
  target: target != null ? target() : this.target,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallIpConfiguration &&
          target == other.target &&
          value == other.value; } 
@override int get hashCode { return Object.hash(target, value); } 
@override String toString() { return 'FirewallIpConfiguration(target: $target, value: $value)'; } 
 }
