// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_payto_display_preference.dart';/// PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
final class PostPaymentMethodConfigurationsRequestPayto {const PostPaymentMethodConfigurationsRequestPayto({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestPayto.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPayto(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestPaytoDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestPaytoDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestPayto copyWith({PostPaymentMethodConfigurationsRequestPaytoDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestPayto(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPayto &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPayto(displayPreference: $displayPreference)'; } 
 }
