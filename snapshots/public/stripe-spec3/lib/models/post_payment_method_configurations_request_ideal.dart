// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_ideal_display_preference.dart';/// iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://docs.stripe.com/payments/ideal) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestIdeal {const PostPaymentMethodConfigurationsRequestIdeal({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestIdeal.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestIdeal(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestIdealDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestIdealDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestIdeal copyWith({PostPaymentMethodConfigurationsRequestIdealDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestIdeal(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestIdeal &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestIdeal(displayPreference: $displayPreference)'; } 
 }
