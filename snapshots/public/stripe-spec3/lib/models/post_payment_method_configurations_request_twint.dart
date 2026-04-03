// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_twint_display_preference.dart';/// Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestTwint {const PostPaymentMethodConfigurationsRequestTwint({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestTwint.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestTwint(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestTwintDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestTwintDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestTwint copyWith({PostPaymentMethodConfigurationsRequestTwintDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestTwint(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestTwint &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestTwint(displayPreference: $displayPreference)'; } 
 }
