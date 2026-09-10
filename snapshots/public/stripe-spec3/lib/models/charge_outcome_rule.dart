// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rule.dart';/// The ID of the Radar rule that matched the payment, if applicable.
@immutable
final class ChargeOutcomeRule {
  const ChargeOutcomeRule({this.string = const Omittable.absent(),
this.rule = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ChargeOutcomeRule._({required this.rawValue, required this.string,
required this.rule,});
  factory ChargeOutcomeRule.fromJson(Object? json) => ChargeOutcomeRule._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
rule: parseAnyOfVariant<Rule>(json, (value) => Rule.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Rule> rule;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || rule.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (rule.isPresent) rule.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ChargeOutcomeRule && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ChargeOutcomeRule(${toJson()})';
}
