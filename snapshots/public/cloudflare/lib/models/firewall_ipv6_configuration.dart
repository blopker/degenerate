// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The configuration target. You must set the target to `ip6` when specifying an IPv6 address in the rule.
@immutable final class FirewallIpv6ConfigurationTarget {const FirewallIpv6ConfigurationTarget._(this.value);

factory FirewallIpv6ConfigurationTarget.fromJson(String json) { return switch (json) {
  'ip6' => ip6,
  _ => FirewallIpv6ConfigurationTarget._(json),
}; }

static const FirewallIpv6ConfigurationTarget ip6 = FirewallIpv6ConfigurationTarget._('ip6');

static const List<FirewallIpv6ConfigurationTarget> values = [ip6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallIpv6ConfigurationTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallIpv6ConfigurationTarget($value)'; } 
 }
@immutable final class FirewallIpv6Configuration {const FirewallIpv6Configuration({this.target, this.value, });

factory FirewallIpv6Configuration.fromJson(Map<String, dynamic> json) { return FirewallIpv6Configuration(
  target: json['target'] != null ? FirewallIpv6ConfigurationTarget.fromJson(json['target'] as String) : null,
  value: json['value'] as String?,
); }

/// The configuration target. You must set the target to `ip6` when specifying an IPv6 address in the rule.
final FirewallIpv6ConfigurationTarget? target;

/// The IPv6 address to match.
final String? value;

Map<String, dynamic> toJson() { return {
  if (target != null) 'target': target?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'target', 'value'}.contains(key)); } 
FirewallIpv6Configuration copyWith({FirewallIpv6ConfigurationTarget Function()? target, String Function()? value, }) { return FirewallIpv6Configuration(
  target: target != null ? target() : this.target,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallIpv6Configuration &&
          target == other.target &&
          value == other.value; } 
@override int get hashCode { return Object.hash(target, value); } 
@override String toString() { return 'FirewallIpv6Configuration(target: $target, value: $value)'; } 
 }
