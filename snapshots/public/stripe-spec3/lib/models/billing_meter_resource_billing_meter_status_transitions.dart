// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingMeterResourceBillingMeterStatusTransitions {const BillingMeterResourceBillingMeterStatusTransitions({this.deactivatedAt = const Omittable.absent()});

factory BillingMeterResourceBillingMeterStatusTransitions.fromJson(Map<String, dynamic> json) { return BillingMeterResourceBillingMeterStatusTransitions(
  deactivatedAt: json.containsKey('deactivated_at') ? Omittable(json['deactivated_at'] != null ? (json['deactivated_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The time the meter was deactivated, if any. Measured in seconds since Unix epoch.
final Omittable<int?> deactivatedAt;

Map<String, dynamic> toJson() { return {
  if (deactivatedAt.isPresent) 'deactivated_at': deactivatedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deactivated_at'}.contains(key)); } 
BillingMeterResourceBillingMeterStatusTransitions copyWith({Omittable<int?>? deactivatedAt}) { return BillingMeterResourceBillingMeterStatusTransitions(
  deactivatedAt: deactivatedAt ?? this.deactivatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingMeterResourceBillingMeterStatusTransitions &&
          deactivatedAt == other.deactivatedAt; } 
@override int get hashCode { return deactivatedAt.hashCode; } 
@override String toString() { return 'BillingMeterResourceBillingMeterStatusTransitions(deactivatedAt: $deactivatedAt)'; } 
 }
