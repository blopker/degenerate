// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_billie_display_preference.dart';/// Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
final class PostPaymentMethodConfigurationsRequestBillie {const PostPaymentMethodConfigurationsRequestBillie({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestBillie.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestBillie(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestBillieDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestBillieDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestBillie copyWith({PostPaymentMethodConfigurationsRequestBillieDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestBillie(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestBillie &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestBillie(displayPreference: $displayPreference)'; } 
 }
