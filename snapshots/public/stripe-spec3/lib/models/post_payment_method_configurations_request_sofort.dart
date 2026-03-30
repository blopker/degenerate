// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_sofort_display_preference.dart';/// Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://docs.stripe.com/payments/sofort) for more details.
final class PostPaymentMethodConfigurationsRequestSofort {const PostPaymentMethodConfigurationsRequestSofort({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestSofort.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestSofort(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestSofortDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestSofortDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestSofort copyWith({PostPaymentMethodConfigurationsRequestSofortDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestSofort(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestSofort &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSofort(displayPreference: $displayPreference)'; } 
 }
