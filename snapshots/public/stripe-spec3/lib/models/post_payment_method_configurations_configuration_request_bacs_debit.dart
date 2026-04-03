// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_bacs_debit_display_preference.dart';/// Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://docs.stripe.com/payments/payment-methods/bacs-debit) for more details.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestBacsDebit {const PostPaymentMethodConfigurationsConfigurationRequestBacsDebit({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestBacsDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestBacsDebit(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestBacsDebit copyWith({PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestBacsDebit(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestBacsDebit &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBacsDebit(displayPreference: $displayPreference)'; } 
 }
