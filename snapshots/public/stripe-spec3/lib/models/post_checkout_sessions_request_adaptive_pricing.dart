// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
@immutable final class PostCheckoutSessionsRequestAdaptivePricing {const PostCheckoutSessionsRequestAdaptivePricing({this.enabled});

factory PostCheckoutSessionsRequestAdaptivePricing.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestAdaptivePricing(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
PostCheckoutSessionsRequestAdaptivePricing copyWith({bool Function()? enabled}) { return PostCheckoutSessionsRequestAdaptivePricing(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestAdaptivePricing &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestAdaptivePricing(enabled: $enabled)'; } 
 }
