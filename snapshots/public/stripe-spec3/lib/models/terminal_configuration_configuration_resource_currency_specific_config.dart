// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TerminalConfigurationConfigurationResourceCurrencySpecificConfig {const TerminalConfigurationConfigurationResourceCurrencySpecificConfig({this.fixedAmounts = const Omittable.absent(), this.percentages = const Omittable.absent(), this.smartTipThreshold, });

factory TerminalConfigurationConfigurationResourceCurrencySpecificConfig.fromJson(Map<String, dynamic> json) { return TerminalConfigurationConfigurationResourceCurrencySpecificConfig(
  fixedAmounts: json.containsKey('fixed_amounts') ? Omittable((json['fixed_amounts'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList()) : const Omittable.absent(),
  percentages: json.containsKey('percentages') ? Omittable((json['percentages'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList()) : const Omittable.absent(),
  smartTipThreshold: json['smart_tip_threshold'] != null ? (json['smart_tip_threshold'] as num).toInt() : null,
); }

/// Fixed amounts displayed when collecting a tip
final Omittable<List<int>?> fixedAmounts;

/// Percentages displayed when collecting a tip
final Omittable<List<int>?> percentages;

/// Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
final int? smartTipThreshold;

Map<String, dynamic> toJson() { return {
  if (fixedAmounts.isPresent) 'fixed_amounts': fixedAmounts.value,
  if (percentages.isPresent) 'percentages': percentages.value,
  'smart_tip_threshold': ?smartTipThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fixed_amounts', 'percentages', 'smart_tip_threshold'}.contains(key)); } 
TerminalConfigurationConfigurationResourceCurrencySpecificConfig copyWith({Omittable<List<int>?>? fixedAmounts, Omittable<List<int>?>? percentages, int? Function()? smartTipThreshold, }) { return TerminalConfigurationConfigurationResourceCurrencySpecificConfig(
  fixedAmounts: fixedAmounts ?? this.fixedAmounts,
  percentages: percentages ?? this.percentages,
  smartTipThreshold: smartTipThreshold != null ? smartTipThreshold() : this.smartTipThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalConfigurationConfigurationResourceCurrencySpecificConfig &&
          fixedAmounts.isPresent == other.fixedAmounts.isPresent &&
          listEquals(fixedAmounts.value, other.fixedAmounts.value) &&
          percentages.isPresent == other.percentages.isPresent &&
          listEquals(percentages.value, other.percentages.value) &&
          smartTipThreshold == other.smartTipThreshold; } 
@override int get hashCode { return Object.hash(Object.hashAll(fixedAmounts.value ?? const []), Object.hashAll(percentages.value ?? const []), smartTipThreshold); } 
@override String toString() { return 'TerminalConfigurationConfigurationResourceCurrencySpecificConfig(fixedAmounts: $fixedAmounts, percentages: $percentages, smartTipThreshold: $smartTipThreshold)'; } 
 }
