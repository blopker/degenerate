// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_p24_display_preference.dart';/// Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://docs.stripe.com/payments/p24) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestP24 {const PostPaymentMethodConfigurationsConfigurationRequestP24({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestP24.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestP24(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestP24DisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestP24DisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestP24 copyWith({PostPaymentMethodConfigurationsConfigurationRequestP24DisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestP24(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestP24 &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestP24(displayPreference: $displayPreference)'; } 
 }
