// GENERATED CODE - DO NOT MODIFY BY HAND

/// The configuration target. You must set the target to `asn` when specifying an Autonomous System Number (ASN) in the rule.
final class FirewallAsnConfigurationTarget {const FirewallAsnConfigurationTarget._(this.value);

factory FirewallAsnConfigurationTarget.fromJson(String json) { return switch (json) {
  'asn' => asn,
  _ => FirewallAsnConfigurationTarget._(json),
}; }

static const FirewallAsnConfigurationTarget asn = FirewallAsnConfigurationTarget._('asn');

static const List<FirewallAsnConfigurationTarget> values = [asn];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallAsnConfigurationTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallAsnConfigurationTarget($value)'; } 
 }
final class FirewallAsnConfiguration {const FirewallAsnConfiguration({this.target, this.value, });

factory FirewallAsnConfiguration.fromJson(Map<String, dynamic> json) { return FirewallAsnConfiguration(
  target: json['target'] != null ? FirewallAsnConfigurationTarget.fromJson(json['target'] as String) : null,
  value: json['value'] as String?,
); }

/// The configuration target. You must set the target to `asn` when specifying an Autonomous System Number (ASN) in the rule.
final FirewallAsnConfigurationTarget? target;

/// The AS number to match.
final String? value;

Map<String, dynamic> toJson() { return {
  if (target != null) 'target': target?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
FirewallAsnConfiguration copyWith({FirewallAsnConfigurationTarget Function()? target, String Function()? value, }) { return FirewallAsnConfiguration(
  target: target != null ? target() : this.target,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallAsnConfiguration &&
          target == other.target &&
          value == other.value; } 
@override int get hashCode { return Object.hash(target, value); } 
@override String toString() { return 'FirewallAsnConfiguration(target: $target, value: $value)'; } 
 }
