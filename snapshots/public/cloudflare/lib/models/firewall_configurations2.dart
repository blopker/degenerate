// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_schemas_cidr_configuration.dart';import 'firewall_schemas_ip_configuration.dart';
@immutable
final class FirewallConfigurations2 {
  const FirewallConfigurations2({this.firewallSchemasIpConfiguration = const Omittable.absent(),
this.firewallSchemasCidrConfiguration = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FirewallConfigurations2._({required this.rawValue, required this.firewallSchemasIpConfiguration,
required this.firewallSchemasCidrConfiguration,});
  factory FirewallConfigurations2.fromJson(Object? json) => FirewallConfigurations2._(
    rawValue: Omittable(json),
    firewallSchemasIpConfiguration: parseAnyOfVariant<FirewallSchemasIpConfiguration>(json, (value) => FirewallSchemasIpConfiguration.fromJson(value! as Map<String, dynamic>)),
firewallSchemasCidrConfiguration: parseAnyOfVariant<FirewallSchemasCidrConfiguration>(json, (value) => FirewallSchemasCidrConfiguration.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<FirewallSchemasIpConfiguration> firewallSchemasIpConfiguration;
final Omittable<FirewallSchemasCidrConfiguration> firewallSchemasCidrConfiguration;

  /// Whether at least one known variant matched.
  bool get isValid => firewallSchemasIpConfiguration.isPresent || firewallSchemasCidrConfiguration.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (firewallSchemasIpConfiguration.isPresent) firewallSchemasIpConfiguration.value?.toJson(),
if (firewallSchemasCidrConfiguration.isPresent) firewallSchemasCidrConfiguration.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FirewallConfigurations2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FirewallConfigurations2(${toJson()})';
}
