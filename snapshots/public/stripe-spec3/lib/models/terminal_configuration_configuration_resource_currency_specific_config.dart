// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
final class TerminalConfigurationConfigurationResourceCurrencySpecificConfig {const TerminalConfigurationConfigurationResourceCurrencySpecificConfig({this.fixedAmounts, this.percentages, this.smartTipThreshold, });

factory TerminalConfigurationConfigurationResourceCurrencySpecificConfig.fromJson(Map<String, dynamic> json) { return TerminalConfigurationConfigurationResourceCurrencySpecificConfig(
  fixedAmounts: (json['fixed_amounts'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  percentages: (json['percentages'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  smartTipThreshold: json['smart_tip_threshold'] != null ? (json['smart_tip_threshold'] as num).toInt() : null,
); }

/// Fixed amounts displayed when collecting a tip
final List<int>? fixedAmounts;

/// Percentages displayed when collecting a tip
final List<int>? percentages;

/// Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
final int? smartTipThreshold;

Map<String, dynamic> toJson() { return {
  'fixed_amounts': ?fixedAmounts,
  'percentages': ?percentages,
  'smart_tip_threshold': ?smartTipThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fixed_amounts', 'percentages', 'smart_tip_threshold'}.contains(key)); } 
TerminalConfigurationConfigurationResourceCurrencySpecificConfig copyWith({List<int>? Function()? fixedAmounts, List<int>? Function()? percentages, int Function()? smartTipThreshold, }) { return TerminalConfigurationConfigurationResourceCurrencySpecificConfig(
  fixedAmounts: fixedAmounts != null ? fixedAmounts() : this.fixedAmounts,
  percentages: percentages != null ? percentages() : this.percentages,
  smartTipThreshold: smartTipThreshold != null ? smartTipThreshold() : this.smartTipThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalConfigurationConfigurationResourceCurrencySpecificConfig &&
          listEquals(fixedAmounts, other.fixedAmounts) &&
          listEquals(percentages, other.percentages) &&
          smartTipThreshold == other.smartTipThreshold; } 
@override int get hashCode { return Object.hash(Object.hashAll(fixedAmounts ?? const []), Object.hashAll(percentages ?? const []), smartTipThreshold); } 
@override String toString() { return 'TerminalConfigurationConfigurationResourceCurrencySpecificConfig(fixedAmounts: $fixedAmounts, percentages: $percentages, smartTipThreshold: $smartTipThreshold)'; } 
 }
