// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_session_request_shipping_options_variant1_shipping_rate_data.dart';final class PostCheckoutSessionsSessionRequestShippingOptionsVariant1 {const PostCheckoutSessionsSessionRequestShippingOptionsVariant1({this.shippingRate, this.shippingRateData, });

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant1.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1(
  shippingRate: json['shipping_rate'] as String?,
  shippingRateData: json['shipping_rate_data'] != null ? PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData.fromJson(json['shipping_rate_data'] as Map<String, dynamic>) : null,
); }

final String? shippingRate;

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData? shippingRateData;

Map<String, dynamic> toJson() { return {
  'shipping_rate': ?shippingRate,
  if (shippingRateData != null) 'shipping_rate_data': shippingRateData?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsSessionRequestShippingOptionsVariant1 copyWith({String Function()? shippingRate, PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateData Function()? shippingRateData, }) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1(
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
  shippingRateData: shippingRateData != null ? shippingRateData() : this.shippingRateData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestShippingOptionsVariant1 &&
          shippingRate == other.shippingRate &&
          shippingRateData == other.shippingRateData; } 
@override int get hashCode { return Object.hash(shippingRate, shippingRateData); } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant1(shippingRate: $shippingRate, shippingRateData: $shippingRateData)'; } 
 }
