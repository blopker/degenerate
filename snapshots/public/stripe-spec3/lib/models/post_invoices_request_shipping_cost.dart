// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_request_shipping_cost_shipping_rate_data.dart';/// Settings for the cost of shipping for this invoice.
@immutable final class PostInvoicesRequestShippingCost {const PostInvoicesRequestShippingCost({this.shippingRate, this.shippingRateData, });

factory PostInvoicesRequestShippingCost.fromJson(Map<String, dynamic> json) { return PostInvoicesRequestShippingCost(
  shippingRate: json['shipping_rate'] as String?,
  shippingRateData: json['shipping_rate_data'] != null ? PostInvoicesRequestShippingCostShippingRateData.fromJson(json['shipping_rate_data'] as Map<String, dynamic>) : null,
); }

final String? shippingRate;

final PostInvoicesRequestShippingCostShippingRateData? shippingRateData;

Map<String, dynamic> toJson() { return {
  'shipping_rate': ?shippingRate,
  if (shippingRateData != null) 'shipping_rate_data': shippingRateData?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'shipping_rate', 'shipping_rate_data'}.contains(key)); } 
PostInvoicesRequestShippingCost copyWith({String Function()? shippingRate, PostInvoicesRequestShippingCostShippingRateData Function()? shippingRateData, }) { return PostInvoicesRequestShippingCost(
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
  shippingRateData: shippingRateData != null ? shippingRateData() : this.shippingRateData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesRequestShippingCost &&
          shippingRate == other.shippingRate &&
          shippingRateData == other.shippingRateData; } 
@override int get hashCode { return Object.hash(shippingRate, shippingRateData); } 
@override String toString() { return 'PostInvoicesRequestShippingCost(shippingRate: $shippingRate, shippingRateData: $shippingRateData)'; } 
 }
