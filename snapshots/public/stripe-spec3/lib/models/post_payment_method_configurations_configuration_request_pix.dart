// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_pix_display_preference.dart';/// Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestPix {const PostPaymentMethodConfigurationsConfigurationRequestPix({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestPix.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestPix(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestPixDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestPixDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestPix copyWith({PostPaymentMethodConfigurationsConfigurationRequestPixDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestPix(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestPix &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestPix(displayPreference: $displayPreference)'; } 
 }
