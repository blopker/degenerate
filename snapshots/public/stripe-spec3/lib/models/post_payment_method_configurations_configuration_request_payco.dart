// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_payco_display_preference.dart';/// PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestPayco {const PostPaymentMethodConfigurationsConfigurationRequestPayco({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestPayco.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestPayco(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestPaycoDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestPaycoDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestPayco copyWith({PostPaymentMethodConfigurationsConfigurationRequestPaycoDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestPayco(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestPayco &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestPayco(displayPreference: $displayPreference)'; } 
 }
