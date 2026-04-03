// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_session_request_shipping_options_variant1_shipping_rate_data_delivery_estimate_maximum.dart';import 'post_checkout_sessions_session_request_shipping_options_variant1_shipping_rate_data_delivery_estimate_minimum.dart';@immutable final class PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate {const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate({this.maximum, this.minimum, });

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate(
  maximum: json['maximum'] != null ? PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum.fromJson(json['maximum'] as Map<String, dynamic>) : null,
  minimum: json['minimum'] != null ? PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMinimum.fromJson(json['minimum'] as Map<String, dynamic>) : null,
); }

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum? maximum;

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMinimum? minimum;

Map<String, dynamic> toJson() { return {
  if (maximum != null) 'maximum': maximum?.toJson(),
  if (minimum != null) 'minimum': minimum?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'maximum', 'minimum'}.contains(key)); } 
PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate copyWith({PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum Function()? maximum, PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMinimum Function()? minimum, }) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate(
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum != null ? minimum() : this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(maximum, minimum); } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimate(maximum: $maximum, minimum: $minimum)'; } 
 }
