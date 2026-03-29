// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class BillingMeterResourceBillingMeterEventAdjustmentCancel {const BillingMeterResourceBillingMeterEventAdjustmentCancel({this.identifier});

factory BillingMeterResourceBillingMeterEventAdjustmentCancel.fromJson(Map<String, dynamic> json) { return BillingMeterResourceBillingMeterEventAdjustmentCancel(
  identifier: json['identifier'] as String?,
); }

/// Unique identifier for the event.
final String? identifier;

Map<String, dynamic> toJson() { return {
  'identifier': ?identifier,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BillingMeterResourceBillingMeterEventAdjustmentCancel copyWith({String? Function()? identifier}) { return BillingMeterResourceBillingMeterEventAdjustmentCancel(
  identifier: identifier != null ? identifier() : this.identifier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingMeterResourceBillingMeterEventAdjustmentCancel &&
          identifier == other.identifier; } 
@override int get hashCode { return identifier.hashCode; } 
@override String toString() { return 'BillingMeterResourceBillingMeterEventAdjustmentCancel(identifier: $identifier)'; } 
 }
