// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_revolut_pay_display_preference.dart';/// Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestRevolutPay {const PostPaymentMethodConfigurationsConfigurationRequestRevolutPay({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestRevolutPay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestRevolutPay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestRevolutPay copyWith({PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestRevolutPay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestRevolutPay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestRevolutPay(displayPreference: $displayPreference)'; } 
 }
