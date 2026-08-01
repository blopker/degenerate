// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingMeterResourceBillingMeterEventAdjustmentCancel {const BillingMeterResourceBillingMeterEventAdjustmentCancel({this.identifier = const Omittable.absent()});

factory BillingMeterResourceBillingMeterEventAdjustmentCancel.fromJson(Map<String, dynamic> json) { return BillingMeterResourceBillingMeterEventAdjustmentCancel(
  identifier: json.containsKey('identifier') ? Omittable(json['identifier'] as String?) : const Omittable.absent(),
); }

/// Unique identifier for the event.
final Omittable<String?> identifier;

Map<String, dynamic> toJson() { return {
  if (identifier.isPresent) 'identifier': identifier.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'identifier'}.contains(key)); } 
BillingMeterResourceBillingMeterEventAdjustmentCancel copyWith({Omittable<String?>? identifier}) { return BillingMeterResourceBillingMeterEventAdjustmentCancel(
  identifier: identifier ?? this.identifier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingMeterResourceBillingMeterEventAdjustmentCancel &&
          identifier == other.identifier; } 
@override int get hashCode { return identifier.hashCode; } 
@override String toString() { return 'BillingMeterResourceBillingMeterEventAdjustmentCancel(identifier: $identifier)'; } 
 }
