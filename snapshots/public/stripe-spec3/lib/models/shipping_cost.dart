// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shipping_cost_shipping_rate_data.dart';final class ShippingCost {const ShippingCost({this.shippingRate, this.shippingRateData, });

factory ShippingCost.fromJson(Map<String, dynamic> json) { return ShippingCost(
  shippingRate: json['shipping_rate'] as String?,
  shippingRateData: json['shipping_rate_data'] != null ? ShippingCostShippingRateData.fromJson(json['shipping_rate_data'] as Map<String, dynamic>) : null,
); }

final String? shippingRate;

final ShippingCostShippingRateData? shippingRateData;

Map<String, dynamic> toJson() { return {
  'shipping_rate': ?shippingRate,
  if (shippingRateData != null) 'shipping_rate_data': shippingRateData?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ShippingCost copyWith({String Function()? shippingRate, ShippingCostShippingRateData Function()? shippingRateData, }) { return ShippingCost(
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
  shippingRateData: shippingRateData != null ? shippingRateData() : this.shippingRateData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShippingCost &&
          shippingRate == other.shippingRate &&
          shippingRateData == other.shippingRateData; } 
@override int get hashCode { return Object.hash(shippingRate, shippingRateData); } 
@override String toString() { return 'ShippingCost(shippingRate: $shippingRate, shippingRateData: $shippingRateData)'; } 
 }
