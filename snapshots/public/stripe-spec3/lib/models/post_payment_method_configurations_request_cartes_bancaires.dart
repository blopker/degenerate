// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_cartes_bancaires_display_preference.dart';/// Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://docs.stripe.com/payments/cartes-bancaires) for more details.
final class PostPaymentMethodConfigurationsRequestCartesBancaires {const PostPaymentMethodConfigurationsRequestCartesBancaires({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestCartesBancaires.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestCartesBancaires(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestCartesBancairesDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestCartesBancairesDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestCartesBancaires copyWith({PostPaymentMethodConfigurationsRequestCartesBancairesDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestCartesBancaires(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestCartesBancaires &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestCartesBancaires(displayPreference: $displayPreference)'; } 
 }
