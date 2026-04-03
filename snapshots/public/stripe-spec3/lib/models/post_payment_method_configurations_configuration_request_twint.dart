// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_twint_display_preference.dart';/// Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestTwint {const PostPaymentMethodConfigurationsConfigurationRequestTwint({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestTwint.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestTwint(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestTwintDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestTwintDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestTwint copyWith({PostPaymentMethodConfigurationsConfigurationRequestTwintDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestTwint(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestTwint &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestTwint(displayPreference: $displayPreference)'; } 
 }
