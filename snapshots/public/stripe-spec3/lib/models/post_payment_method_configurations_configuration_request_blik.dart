// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_blik_display_preference.dart';/// BLIK is a [single use](https://docs.stripe.com/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://docs.stripe.com/payments/blik) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestBlik {const PostPaymentMethodConfigurationsConfigurationRequestBlik({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestBlik.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestBlik(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestBlikDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestBlikDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestBlik copyWith({PostPaymentMethodConfigurationsConfigurationRequestBlikDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestBlik(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestBlik &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBlik(displayPreference: $displayPreference)'; } 
 }
