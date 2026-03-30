// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_paypal_display_preference.dart';/// PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://docs.stripe.com/payments/paypal) for more details.
final class PostPaymentMethodConfigurationsRequestPaypal {const PostPaymentMethodConfigurationsRequestPaypal({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestPaypal.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPaypal(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestPaypalDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestPaypalDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestPaypal copyWith({PostPaymentMethodConfigurationsRequestPaypalDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestPaypal(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPaypal &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPaypal(displayPreference: $displayPreference)'; } 
 }
