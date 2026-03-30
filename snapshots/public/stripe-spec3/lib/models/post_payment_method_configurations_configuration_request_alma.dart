// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_alma_display_preference.dart';/// Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
final class PostPaymentMethodConfigurationsConfigurationRequestAlma {const PostPaymentMethodConfigurationsConfigurationRequestAlma({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestAlma.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestAlma(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestAlmaDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestAlmaDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestAlma copyWith({PostPaymentMethodConfigurationsConfigurationRequestAlmaDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestAlma(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestAlma &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAlma(displayPreference: $displayPreference)'; } 
 }
