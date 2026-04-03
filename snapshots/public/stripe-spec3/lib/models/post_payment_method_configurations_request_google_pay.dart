// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_google_pay_display_preference.dart';/// Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://docs.stripe.com/google-pay) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestGooglePay {const PostPaymentMethodConfigurationsRequestGooglePay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestGooglePay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestGooglePay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestGooglePayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestGooglePayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestGooglePay copyWith({PostPaymentMethodConfigurationsRequestGooglePayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestGooglePay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestGooglePay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestGooglePay(displayPreference: $displayPreference)'; } 
 }
