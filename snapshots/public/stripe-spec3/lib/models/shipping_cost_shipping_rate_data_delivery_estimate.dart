// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping_cost_shipping_rate_data_delivery_estimate_maximum.dart';import 'shipping_cost_shipping_rate_data_delivery_estimate_minimum.dart';@immutable final class ShippingCostShippingRateDataDeliveryEstimate {const ShippingCostShippingRateDataDeliveryEstimate({this.maximum, this.minimum, });

factory ShippingCostShippingRateDataDeliveryEstimate.fromJson(Map<String, dynamic> json) { return ShippingCostShippingRateDataDeliveryEstimate(
  maximum: json['maximum'] != null ? ShippingCostShippingRateDataDeliveryEstimateMaximum.fromJson(json['maximum'] as Map<String, dynamic>) : null,
  minimum: json['minimum'] != null ? ShippingCostShippingRateDataDeliveryEstimateMinimum.fromJson(json['minimum'] as Map<String, dynamic>) : null,
); }

final ShippingCostShippingRateDataDeliveryEstimateMaximum? maximum;

final ShippingCostShippingRateDataDeliveryEstimateMinimum? minimum;

Map<String, dynamic> toJson() { return {
  if (maximum != null) 'maximum': maximum?.toJson(),
  if (minimum != null) 'minimum': minimum?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'maximum', 'minimum'}.contains(key)); } 
ShippingCostShippingRateDataDeliveryEstimate copyWith({ShippingCostShippingRateDataDeliveryEstimateMaximum Function()? maximum, ShippingCostShippingRateDataDeliveryEstimateMinimum Function()? minimum, }) { return ShippingCostShippingRateDataDeliveryEstimate(
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum != null ? minimum() : this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShippingCostShippingRateDataDeliveryEstimate &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(maximum, minimum); } 
@override String toString() { return 'ShippingCostShippingRateDataDeliveryEstimate(maximum: $maximum, minimum: $minimum)'; } 
 }
