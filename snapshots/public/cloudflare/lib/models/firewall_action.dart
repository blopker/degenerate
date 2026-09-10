// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_action_variant1.dart';/// The action to perform when the threshold of matched traffic within the configured period is exceeded.
@immutable
final class FirewallAction {
  const FirewallAction({this.firewallActionVariant1 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FirewallAction._({required this.rawValue, required this.firewallActionVariant1,});
  factory FirewallAction.fromJson(Object? json) => FirewallAction._(
    rawValue: Omittable(json),
    firewallActionVariant1: parseAnyOfVariant<FirewallActionVariant1>(json, (value) => FirewallActionVariant1.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<FirewallActionVariant1> firewallActionVariant1;

  /// Whether at least one known variant matched.
  bool get isValid => firewallActionVariant1.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (firewallActionVariant1.isPresent) firewallActionVariant1.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FirewallAction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FirewallAction(${toJson()})';
}
