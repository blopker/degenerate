// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'environment_protection_rules_variant1.dart';import 'environment_protection_rules_variant2.dart';import 'environment_protection_rules_variant3.dart';
@immutable
final class EnvironmentProtectionRules {
  const EnvironmentProtectionRules({this.environmentProtectionRulesVariant1 = const Omittable.absent(),
this.environmentProtectionRulesVariant2 = const Omittable.absent(),
this.environmentProtectionRulesVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnvironmentProtectionRules._({required this.rawValue, required this.environmentProtectionRulesVariant1,
required this.environmentProtectionRulesVariant2,
required this.environmentProtectionRulesVariant3,});
  factory EnvironmentProtectionRules.fromJson(Object? json) => EnvironmentProtectionRules._(
    rawValue: Omittable(json),
    environmentProtectionRulesVariant1: parseAnyOfVariant<EnvironmentProtectionRulesVariant1>(json, (value) => EnvironmentProtectionRulesVariant1.fromJson(value! as Map<String, dynamic>)),
environmentProtectionRulesVariant2: parseAnyOfVariant<EnvironmentProtectionRulesVariant2>(json, (value) => EnvironmentProtectionRulesVariant2.fromJson(value! as Map<String, dynamic>)),
environmentProtectionRulesVariant3: parseAnyOfVariant<EnvironmentProtectionRulesVariant3>(json, (value) => EnvironmentProtectionRulesVariant3.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<EnvironmentProtectionRulesVariant1> environmentProtectionRulesVariant1;
final Omittable<EnvironmentProtectionRulesVariant2> environmentProtectionRulesVariant2;
final Omittable<EnvironmentProtectionRulesVariant3> environmentProtectionRulesVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => environmentProtectionRulesVariant1.isPresent || environmentProtectionRulesVariant2.isPresent || environmentProtectionRulesVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (environmentProtectionRulesVariant1.isPresent) environmentProtectionRulesVariant1.value?.toJson(),
if (environmentProtectionRulesVariant2.isPresent) environmentProtectionRulesVariant2.value?.toJson(),
if (environmentProtectionRulesVariant3.isPresent) environmentProtectionRulesVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnvironmentProtectionRules && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnvironmentProtectionRules(${toJson()})';
}
