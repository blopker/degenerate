// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_revolut_pay_display_preference.dart';/// Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
final class PostPaymentMethodConfigurationsRequestRevolutPay {const PostPaymentMethodConfigurationsRequestRevolutPay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestRevolutPay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestRevolutPay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestRevolutPayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestRevolutPayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestRevolutPay copyWith({PostPaymentMethodConfigurationsRequestRevolutPayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestRevolutPay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestRevolutPay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestRevolutPay(displayPreference: $displayPreference)'; } 
 }
