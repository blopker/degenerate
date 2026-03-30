// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_amazon_pay_display_preference.dart';/// Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
final class PostPaymentMethodConfigurationsRequestAmazonPay {const PostPaymentMethodConfigurationsRequestAmazonPay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestAmazonPay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAmazonPay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestAmazonPayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestAmazonPayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestAmazonPay copyWith({PostPaymentMethodConfigurationsRequestAmazonPayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestAmazonPay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAmazonPay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAmazonPay(displayPreference: $displayPreference)'; } 
 }
