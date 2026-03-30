// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_mobilepay_display_preference.dart';/// MobilePay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://docs.stripe.com/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://docs.stripe.com/payments/mobilepay) for more details.
final class PostPaymentMethodConfigurationsRequestMobilepay {const PostPaymentMethodConfigurationsRequestMobilepay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestMobilepay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestMobilepay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestMobilepay copyWith({PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestMobilepay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestMobilepay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestMobilepay(displayPreference: $displayPreference)'; } 
 }
