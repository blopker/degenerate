// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_kr_card_display_preference.dart';/// Korean cards let users pay using locally issued cards from South Korea.
final class PostPaymentMethodConfigurationsConfigurationRequestKrCard {const PostPaymentMethodConfigurationsConfigurationRequestKrCard({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestKrCard.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestKrCard(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestKrCardDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestKrCardDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestKrCard copyWith({PostPaymentMethodConfigurationsConfigurationRequestKrCardDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestKrCard(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestKrCard &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestKrCard(displayPreference: $displayPreference)'; } 
 }
