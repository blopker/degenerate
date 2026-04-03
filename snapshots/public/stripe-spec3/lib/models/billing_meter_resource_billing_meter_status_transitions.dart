// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingMeterResourceBillingMeterStatusTransitions {const BillingMeterResourceBillingMeterStatusTransitions({this.deactivatedAt});

factory BillingMeterResourceBillingMeterStatusTransitions.fromJson(Map<String, dynamic> json) { return BillingMeterResourceBillingMeterStatusTransitions(
  deactivatedAt: json['deactivated_at'] != null ? (json['deactivated_at'] as num).toInt() : null,
); }

/// The time the meter was deactivated, if any. Measured in seconds since Unix epoch.
final int? deactivatedAt;

Map<String, dynamic> toJson() { return {
  'deactivated_at': ?deactivatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deactivated_at'}.contains(key)); } 
BillingMeterResourceBillingMeterStatusTransitions copyWith({int? Function()? deactivatedAt}) { return BillingMeterResourceBillingMeterStatusTransitions(
  deactivatedAt: deactivatedAt != null ? deactivatedAt() : this.deactivatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingMeterResourceBillingMeterStatusTransitions &&
          deactivatedAt == other.deactivatedAt; } 
@override int get hashCode { return deactivatedAt.hashCode; } 
@override String toString() { return 'BillingMeterResourceBillingMeterStatusTransitions(deactivatedAt: $deactivatedAt)'; } 
 }
