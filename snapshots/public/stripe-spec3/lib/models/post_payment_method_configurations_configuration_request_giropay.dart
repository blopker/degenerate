// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_giropay_display_preference.dart';/// giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://docs.stripe.com/payments/giropay) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestGiropay {const PostPaymentMethodConfigurationsConfigurationRequestGiropay({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestGiropay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestGiropay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestGiropay copyWith({PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestGiropay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestGiropay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestGiropay(displayPreference: $displayPreference)'; } 
 }
