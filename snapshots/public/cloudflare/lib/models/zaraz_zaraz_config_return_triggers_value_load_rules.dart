// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_click_listener_rule.dart';import 'zaraz_element_visibility_rule.dart';import 'zaraz_form_submission_rule.dart';import 'zaraz_load_rule.dart';import 'zaraz_scroll_depth_rule.dart';import 'zaraz_timer_rule.dart';import 'zaraz_variable_match_rule.dart';
@immutable
final class ZarazZarazConfigReturnTriggersValueLoadRules {
  const ZarazZarazConfigReturnTriggersValueLoadRules({this.zarazLoadRule = const Omittable.absent(),
this.zarazClickListenerRule = const Omittable.absent(),
this.zarazTimerRule = const Omittable.absent(),
this.zarazFormSubmissionRule = const Omittable.absent(),
this.zarazVariableMatchRule = const Omittable.absent(),
this.zarazScrollDepthRule = const Omittable.absent(),
this.zarazElementVisibilityRule = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ZarazZarazConfigReturnTriggersValueLoadRules._({required this.rawValue, required this.zarazLoadRule,
required this.zarazClickListenerRule,
required this.zarazTimerRule,
required this.zarazFormSubmissionRule,
required this.zarazVariableMatchRule,
required this.zarazScrollDepthRule,
required this.zarazElementVisibilityRule,});
  factory ZarazZarazConfigReturnTriggersValueLoadRules.fromJson(Object? json) => ZarazZarazConfigReturnTriggersValueLoadRules._(
    rawValue: Omittable(json),
    zarazLoadRule: parseAnyOfVariant<ZarazLoadRule>(json, (value) => ZarazLoadRule.fromJson(value! as Map<String, dynamic>)),
zarazClickListenerRule: parseAnyOfVariant<ZarazClickListenerRule>(json, (value) => ZarazClickListenerRule.fromJson(value! as Map<String, dynamic>)),
zarazTimerRule: parseAnyOfVariant<ZarazTimerRule>(json, (value) => ZarazTimerRule.fromJson(value! as Map<String, dynamic>)),
zarazFormSubmissionRule: parseAnyOfVariant<ZarazFormSubmissionRule>(json, (value) => ZarazFormSubmissionRule.fromJson(value! as Map<String, dynamic>)),
zarazVariableMatchRule: parseAnyOfVariant<ZarazVariableMatchRule>(json, (value) => ZarazVariableMatchRule.fromJson(value! as Map<String, dynamic>)),
zarazScrollDepthRule: parseAnyOfVariant<ZarazScrollDepthRule>(json, (value) => ZarazScrollDepthRule.fromJson(value! as Map<String, dynamic>)),
zarazElementVisibilityRule: parseAnyOfVariant<ZarazElementVisibilityRule>(json, (value) => ZarazElementVisibilityRule.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ZarazLoadRule> zarazLoadRule;
final Omittable<ZarazClickListenerRule> zarazClickListenerRule;
final Omittable<ZarazTimerRule> zarazTimerRule;
final Omittable<ZarazFormSubmissionRule> zarazFormSubmissionRule;
final Omittable<ZarazVariableMatchRule> zarazVariableMatchRule;
final Omittable<ZarazScrollDepthRule> zarazScrollDepthRule;
final Omittable<ZarazElementVisibilityRule> zarazElementVisibilityRule;

  /// Whether at least one known variant matched.
  bool get isValid => zarazLoadRule.isPresent || zarazClickListenerRule.isPresent || zarazTimerRule.isPresent || zarazFormSubmissionRule.isPresent || zarazVariableMatchRule.isPresent || zarazScrollDepthRule.isPresent || zarazElementVisibilityRule.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (zarazLoadRule.isPresent) zarazLoadRule.value?.toJson(),
if (zarazClickListenerRule.isPresent) zarazClickListenerRule.value?.toJson(),
if (zarazTimerRule.isPresent) zarazTimerRule.value?.toJson(),
if (zarazFormSubmissionRule.isPresent) zarazFormSubmissionRule.value?.toJson(),
if (zarazVariableMatchRule.isPresent) zarazVariableMatchRule.value?.toJson(),
if (zarazScrollDepthRule.isPresent) zarazScrollDepthRule.value?.toJson(),
if (zarazElementVisibilityRule.isPresent) zarazElementVisibilityRule.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ZarazZarazConfigReturnTriggersValueLoadRules && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ZarazZarazConfigReturnTriggersValueLoadRules(${toJson()})';
}
