// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class TippingChf {const TippingChf({this.fixedAmounts, this.percentages, this.smartTipThreshold, });

factory TippingChf.fromJson(Map<String, dynamic> json) { return TippingChf(
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
static bool canParse(Map<String, dynamic> json) { return true; } 
TippingChf copyWith({List<int> Function()? fixedAmounts, List<int> Function()? percentages, int Function()? smartTipThreshold, }) { return TippingChf(
  fixedAmounts: fixedAmounts != null ? fixedAmounts() : this.fixedAmounts,
  percentages: percentages != null ? percentages() : this.percentages,
  smartTipThreshold: smartTipThreshold != null ? smartTipThreshold() : this.smartTipThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TippingChf &&
          listEquals(fixedAmounts, other.fixedAmounts) &&
          listEquals(percentages, other.percentages) &&
          smartTipThreshold == other.smartTipThreshold; } 
@override int get hashCode { return Object.hash(Object.hashAll(fixedAmounts ?? const []), Object.hashAll(percentages ?? const []), smartTipThreshold); } 
@override String toString() { return 'TippingChf(fixedAmounts: $fixedAmounts, percentages: $percentages, smartTipThreshold: $smartTipThreshold)'; } 
 }
