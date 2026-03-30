// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class Tipping2Gip {const Tipping2Gip({this.fixedAmounts, this.percentages, this.smartTipThreshold, });

factory Tipping2Gip.fromJson(Map<String, dynamic> json) { return Tipping2Gip(
  fixedAmounts: (json['fixed_amounts'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  percentages: (json['percentages'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  smartTipThreshold: json['smart_tip_threshold'] != null ? (json['smart_tip_threshold'] as num).toInt() : null,
); }

final List<int>? fixedAmounts;

final List<int>? percentages;

final int? smartTipThreshold;

Map<String, dynamic> toJson() { return {
  'fixed_amounts': ?fixedAmounts,
  'percentages': ?percentages,
  'smart_tip_threshold': ?smartTipThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fixed_amounts', 'percentages', 'smart_tip_threshold'}.contains(key)); } 
Tipping2Gip copyWith({List<int> Function()? fixedAmounts, List<int> Function()? percentages, int Function()? smartTipThreshold, }) { return Tipping2Gip(
  fixedAmounts: fixedAmounts != null ? fixedAmounts() : this.fixedAmounts,
  percentages: percentages != null ? percentages() : this.percentages,
  smartTipThreshold: smartTipThreshold != null ? smartTipThreshold() : this.smartTipThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Tipping2Gip &&
          listEquals(fixedAmounts, other.fixedAmounts) &&
          listEquals(percentages, other.percentages) &&
          smartTipThreshold == other.smartTipThreshold; } 
@override int get hashCode { return Object.hash(Object.hashAll(fixedAmounts ?? const []), Object.hashAll(percentages ?? const []), smartTipThreshold); } 
@override String toString() { return 'Tipping2Gip(fixedAmounts: $fixedAmounts, percentages: $percentages, smartTipThreshold: $smartTipThreshold)'; } 
 }
