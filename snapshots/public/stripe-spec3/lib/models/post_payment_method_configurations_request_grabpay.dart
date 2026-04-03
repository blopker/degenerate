// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_grabpay_display_preference.dart';/// GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://docs.stripe.com/payments/grabpay) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestGrabpay {const PostPaymentMethodConfigurationsRequestGrabpay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestGrabpay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestGrabpay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestGrabpay copyWith({PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestGrabpay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestGrabpay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestGrabpay(displayPreference: $displayPreference)'; } 
 }
