// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_meter_resource_billing_meter_event_adjustment_cancel.dart';/// Specifies which event to cancel.
final class BillingMeterEventAdjustmentCancel {const BillingMeterEventAdjustmentCancel({this.billingMeterResourceBillingMeterEventAdjustmentCancel});

factory BillingMeterEventAdjustmentCancel.fromJson(Map<String, dynamic> json) { return BillingMeterEventAdjustmentCancel(
  billingMeterResourceBillingMeterEventAdjustmentCancel: BillingMeterResourceBillingMeterEventAdjustmentCancel.canParse(json) ? BillingMeterResourceBillingMeterEventAdjustmentCancel.fromJson(json) : null,
); }

final BillingMeterResourceBillingMeterEventAdjustmentCancel? billingMeterResourceBillingMeterEventAdjustmentCancel;

/// At least one variant must be present.
bool get isValid { return billingMeterResourceBillingMeterEventAdjustmentCancel != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingMeterResourceBillingMeterEventAdjustmentCancel?.toJson(),
}; } 
 }
