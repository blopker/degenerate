// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_payco_display_preference.dart';/// PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
@immutable final class PostPaymentMethodConfigurationsRequestPayco {const PostPaymentMethodConfigurationsRequestPayco({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestPayco.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPayco(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestPaycoDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestPaycoDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestPayco copyWith({PostPaymentMethodConfigurationsRequestPaycoDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestPayco(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPayco &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPayco(displayPreference: $displayPreference)'; } 
 }
