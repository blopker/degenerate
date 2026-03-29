// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_apple_pay_later_display_preference.dart';/// Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
final class PostPaymentMethodConfigurationsConfigurationRequestApplePayLater {const PostPaymentMethodConfigurationsConfigurationRequestApplePayLater({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestApplePayLater.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestApplePayLater(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestApplePayLater copyWith({PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestApplePayLater(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestApplePayLater &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestApplePayLater(displayPreference: $displayPreference)'; } 
 }
