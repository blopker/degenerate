// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_mb_way_display_preference.dart';/// MB WAY is the most popular wallet in Portugal. After entering their phone number in your checkout, customers approve the payment directly in their MB WAY app. Check this [page](https://docs.stripe.com/payments/mb-way) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestMbWay {const PostPaymentMethodConfigurationsRequestMbWay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestMbWay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestMbWay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestMbWayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestMbWayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestMbWay copyWith({PostPaymentMethodConfigurationsRequestMbWayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestMbWay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestMbWay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestMbWay(displayPreference: $displayPreference)'; } 
 }
