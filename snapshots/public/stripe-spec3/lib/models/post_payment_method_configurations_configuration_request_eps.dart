// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_eps_display_preference.dart';/// EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://docs.stripe.com/payments/eps) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestEps {const PostPaymentMethodConfigurationsConfigurationRequestEps({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestEps.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestEps(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestEpsDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestEpsDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestEps copyWith({PostPaymentMethodConfigurationsConfigurationRequestEpsDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestEps(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestEps &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestEps(displayPreference: $displayPreference)'; } 
 }
