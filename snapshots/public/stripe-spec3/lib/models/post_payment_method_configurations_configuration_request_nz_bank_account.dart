// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_nz_bank_account_display_preference.dart';/// Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://docs.stripe.com/payments/nz-bank-account) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount {const PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount copyWith({PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestNzBankAccount(displayPreference: $displayPreference)'; } 
 }
