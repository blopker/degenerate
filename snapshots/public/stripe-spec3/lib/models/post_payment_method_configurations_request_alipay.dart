// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_alipay_display_preference.dart';/// Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://docs.stripe.com/payments/alipay) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestAlipay {const PostPaymentMethodConfigurationsRequestAlipay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestAlipay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAlipay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestAlipayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestAlipayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestAlipay copyWith({PostPaymentMethodConfigurationsRequestAlipayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestAlipay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAlipay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAlipay(displayPreference: $displayPreference)'; } 
 }
