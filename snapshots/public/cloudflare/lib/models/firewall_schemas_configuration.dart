// GENERATED CODE - DO NOT MODIFY BY HAND

/// The configuration object for the current rule.
final class FirewallSchemasConfiguration {const FirewallSchemasConfiguration({this.target, this.value, });

factory FirewallSchemasConfiguration.fromJson(Map<String, dynamic> json) { return FirewallSchemasConfiguration(
  target: json['target'] as String?,
  value: json['value'] as String?,
); }

/// The configuration target for this rule. You must set the target to `ua` for User Agent Blocking rules.
final String? target;

/// The exact user agent string to match. This value will be compared to the received `User-Agent` HTTP header value.
final String? value;

Map<String, dynamic> toJson() { return {
  'target': ?target,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'target', 'value'}.contains(key)); } 
FirewallSchemasConfiguration copyWith({String Function()? target, String Function()? value, }) { return FirewallSchemasConfiguration(
  target: target != null ? target() : this.target,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallSchemasConfiguration &&
          target == other.target &&
          value == other.value; } 
@override int get hashCode { return Object.hash(target, value); } 
@override String toString() { return 'FirewallSchemasConfiguration(target: $target, value: $value)'; } 
 }
