// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_bacs_debit_display_preference.dart';/// Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://docs.stripe.com/payments/payment-methods/bacs-debit) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestBacsDebit {const PostPaymentMethodConfigurationsRequestBacsDebit({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestBacsDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestBacsDebit(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestBacsDebitDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestBacsDebitDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestBacsDebit copyWith({PostPaymentMethodConfigurationsRequestBacsDebitDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestBacsDebit(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestBacsDebit &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestBacsDebit(displayPreference: $displayPreference)'; } 
 }
