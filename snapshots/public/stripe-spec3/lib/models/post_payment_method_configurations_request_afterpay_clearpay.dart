// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_afterpay_clearpay_display_preference.dart';/// Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://docs.stripe.com/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
final class PostPaymentMethodConfigurationsRequestAfterpayClearpay {const PostPaymentMethodConfigurationsRequestAfterpayClearpay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestAfterpayClearpay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAfterpayClearpay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsRequestAfterpayClearpay copyWith({PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestAfterpayClearpay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAfterpayClearpay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAfterpayClearpay(displayPreference: $displayPreference)'; } 
 }
