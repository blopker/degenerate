// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping_rate_delivery_estimate_bound.dart';/// 
@immutable final class ShippingRateDeliveryEstimate {const ShippingRateDeliveryEstimate({this.maximum = const Omittable.absent(), this.minimum = const Omittable.absent(), });

factory ShippingRateDeliveryEstimate.fromJson(Map<String, dynamic> json) { return ShippingRateDeliveryEstimate(
  maximum: json.containsKey('maximum') ? Omittable(json['maximum'] != null ? ShippingRateDeliveryEstimateBound.fromJson(json['maximum'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  minimum: json.containsKey('minimum') ? Omittable(json['minimum'] != null ? ShippingRateDeliveryEstimateBound.fromJson(json['minimum'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
final Omittable<ShippingRateDeliveryEstimateBound?> maximum;

/// The lower bound of the estimated range. If empty, represents no lower bound.
final Omittable<ShippingRateDeliveryEstimateBound?> minimum;

Map<String, dynamic> toJson() { return {
  if (maximum.isPresent) 'maximum': maximum.value?.toJson(),
  if (minimum.isPresent) 'minimum': minimum.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'maximum', 'minimum'}.contains(key)); } 
ShippingRateDeliveryEstimate copyWith({Omittable<ShippingRateDeliveryEstimateBound?>? maximum, Omittable<ShippingRateDeliveryEstimateBound?>? minimum, }) { return ShippingRateDeliveryEstimate(
  maximum: maximum ?? this.maximum,
  minimum: minimum ?? this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShippingRateDeliveryEstimate &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(maximum, minimum); } 
@override String toString() { return 'ShippingRateDeliveryEstimate(maximum: $maximum, minimum: $minimum)'; } 
 }
