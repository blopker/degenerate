// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_apple_pay_display_preference.dart';/// Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://docs.stripe.com/apple-pay) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestApplePay {const PostPaymentMethodConfigurationsRequestApplePay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestApplePay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestApplePay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestApplePayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestApplePayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestApplePay copyWith({PostPaymentMethodConfigurationsRequestApplePayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestApplePay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestApplePay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestApplePay(displayPreference: $displayPreference)'; } 
 }
