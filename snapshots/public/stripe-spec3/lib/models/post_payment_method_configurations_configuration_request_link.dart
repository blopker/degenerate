// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_link_display_preference.dart';/// [Link](https://docs.stripe.com/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
final class PostPaymentMethodConfigurationsConfigurationRequestLink {const PostPaymentMethodConfigurationsConfigurationRequestLink({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestLink.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestLink(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestLinkDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestLinkDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestLink copyWith({PostPaymentMethodConfigurationsConfigurationRequestLinkDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestLink(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestLink &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestLink(displayPreference: $displayPreference)'; } 
 }
