// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_request_shipping_cost_shipping_rate_data_delivery_estimate_maximum.dart';import 'post_invoices_request_shipping_cost_shipping_rate_data_delivery_estimate_minimum.dart';@immutable final class PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate {const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate({this.maximum, this.minimum, });

factory PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate.fromJson(Map<String, dynamic> json) { return PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate(
  maximum: json['maximum'] != null ? PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMaximum.fromJson(json['maximum'] as Map<String, dynamic>) : null,
  minimum: json['minimum'] != null ? PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum.fromJson(json['minimum'] as Map<String, dynamic>) : null,
); }

final PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMaximum? maximum;

final PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum? minimum;

Map<String, dynamic> toJson() { return {
  if (maximum != null) 'maximum': maximum?.toJson(),
  if (minimum != null) 'minimum': minimum?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'maximum', 'minimum'}.contains(key)); } 
PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate copyWith({PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMaximum Function()? maximum, PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum Function()? minimum, }) { return PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate(
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum != null ? minimum() : this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(maximum, minimum); } 
@override String toString() { return 'PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimate(maximum: $maximum, minimum: $minimum)'; } 
 }
