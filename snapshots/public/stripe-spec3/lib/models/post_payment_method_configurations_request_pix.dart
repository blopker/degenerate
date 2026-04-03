// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_pix_display_preference.dart';/// Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestPix {const PostPaymentMethodConfigurationsRequestPix({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestPix.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPix(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestPixDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestPixDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestPix copyWith({PostPaymentMethodConfigurationsRequestPixDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestPix(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPix &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPix(displayPreference: $displayPreference)'; } 
 }
