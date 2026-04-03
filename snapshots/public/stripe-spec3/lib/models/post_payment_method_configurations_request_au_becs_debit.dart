// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_au_becs_debit_display_preference.dart';/// Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://docs.stripe.com/payments/au-becs-debit) for more details.
@immutable final class PostPaymentMethodConfigurationsRequestAuBecsDebit {const PostPaymentMethodConfigurationsRequestAuBecsDebit({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestAuBecsDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAuBecsDebit(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestAuBecsDebitDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestAuBecsDebitDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestAuBecsDebit copyWith({PostPaymentMethodConfigurationsRequestAuBecsDebitDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestAuBecsDebit(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAuBecsDebit &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAuBecsDebit(displayPreference: $displayPreference)'; } 
 }
