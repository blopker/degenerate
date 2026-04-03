// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_multibanco_display_preference.dart';/// Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
@immutable final class PostPaymentMethodConfigurationsRequestMultibanco {const PostPaymentMethodConfigurationsRequestMultibanco({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestMultibanco.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestMultibanco(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestMultibancoDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestMultibancoDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestMultibanco copyWith({PostPaymentMethodConfigurationsRequestMultibancoDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestMultibanco(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestMultibanco &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestMultibanco(displayPreference: $displayPreference)'; } 
 }
