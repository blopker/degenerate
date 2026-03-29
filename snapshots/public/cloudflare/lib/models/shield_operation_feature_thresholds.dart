// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_operation_feature_thresholds_thresholds.dart';final class ShieldOperationFeatureThresholds {const ShieldOperationFeatureThresholds({this.thresholds});

factory ShieldOperationFeatureThresholds.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureThresholds(
  thresholds: json['thresholds'] != null ? ShieldOperationFeatureThresholdsThresholds.fromJson(json['thresholds'] as Map<String, dynamic>) : null,
); }

final ShieldOperationFeatureThresholdsThresholds? thresholds;

Map<String, dynamic> toJson() { return {
  if (thresholds != null) 'thresholds': thresholds?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ShieldOperationFeatureThresholds copyWith({ShieldOperationFeatureThresholdsThresholds Function()? thresholds}) { return ShieldOperationFeatureThresholds(
  thresholds: thresholds != null ? thresholds() : this.thresholds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureThresholds &&
          thresholds == other.thresholds; } 
@override int get hashCode { return thresholds.hashCode; } 
@override String toString() { return 'ShieldOperationFeatureThresholds(thresholds: $thresholds)'; } 
 }
