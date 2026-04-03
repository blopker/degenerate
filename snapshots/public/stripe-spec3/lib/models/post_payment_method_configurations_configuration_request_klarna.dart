// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_klarna_display_preference.dart';/// Klarna gives customers a range of [payment options](https://docs.stripe.com/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://docs.stripe.com/payments/klarna) for more details.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestKlarna {const PostPaymentMethodConfigurationsConfigurationRequestKlarna({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestKlarna.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestKlarna(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestKlarnaDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestKlarnaDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestKlarna copyWith({PostPaymentMethodConfigurationsConfigurationRequestKlarnaDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestKlarna(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestKlarna &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestKlarna(displayPreference: $displayPreference)'; } 
 }
