// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_us_bank_account_display_preference.dart';/// Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://docs.stripe.com/payments/ach-direct-debit) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount {const PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestUsBankAccountDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestUsBankAccountDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount copyWith({PostPaymentMethodConfigurationsConfigurationRequestUsBankAccountDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestUsBankAccount(displayPreference: $displayPreference)'; } 
 }
