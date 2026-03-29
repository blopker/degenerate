// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_au_becs_debit_display_preference.dart';/// Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://docs.stripe.com/payments/au-becs-debit) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit {const PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebitDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebitDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit copyWith({PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebitDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAuBecsDebit(displayPreference: $displayPreference)'; } 
 }
