// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shipping_rate_delivery_estimate_bound.dart';/// The lower bound of the estimated range. If empty, represents no lower bound.
final class ShippingRateDeliveryEstimateMinimum {const ShippingRateDeliveryEstimateMinimum({this.shippingRateDeliveryEstimateBound});

factory ShippingRateDeliveryEstimateMinimum.fromJson(Map<String, dynamic> json) { return ShippingRateDeliveryEstimateMinimum(
  shippingRateDeliveryEstimateBound: ShippingRateDeliveryEstimateBound.canParse(json) ? ShippingRateDeliveryEstimateBound.fromJson(json) : null,
); }

final ShippingRateDeliveryEstimateBound? shippingRateDeliveryEstimateBound;

/// At least one variant must be present.
bool get isValid { return shippingRateDeliveryEstimateBound != null; } 
Map<String, dynamic> toJson() { return {
  ...?shippingRateDeliveryEstimateBound?.toJson(),
}; } 
 }
