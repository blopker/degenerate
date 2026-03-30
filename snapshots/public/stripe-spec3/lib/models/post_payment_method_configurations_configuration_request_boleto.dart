// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_boleto_display_preference.dart';/// Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://docs.stripe.com/payments/boleto) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestBoleto {const PostPaymentMethodConfigurationsConfigurationRequestBoleto({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestBoleto.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestBoleto(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestBoleto copyWith({PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestBoleto(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestBoleto &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBoleto(displayPreference: $displayPreference)'; } 
 }
