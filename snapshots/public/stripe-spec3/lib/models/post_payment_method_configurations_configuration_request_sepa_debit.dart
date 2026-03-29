// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_sepa_debit_display_preference.dart';/// The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://docs.stripe.com/payments/sepa-debit) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestSepaDebit {const PostPaymentMethodConfigurationsConfigurationRequestSepaDebit({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestSepaDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestSepaDebit(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestSepaDebit copyWith({PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestSepaDebit(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestSepaDebit &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSepaDebit(displayPreference: $displayPreference)'; } 
 }
