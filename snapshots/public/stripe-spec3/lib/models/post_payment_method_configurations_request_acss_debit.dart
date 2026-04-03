// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_acss_debit_display_preference.dart';/// Canadian pre-authorized debit payments, check this [page](https://docs.stripe.com/payments/acss-debit) for more details like country availability.
@immutable final class PostPaymentMethodConfigurationsRequestAcssDebit {const PostPaymentMethodConfigurationsRequestAcssDebit({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestAcssDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAcssDebit(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestAcssDebit copyWith({PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestAcssDebit(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAcssDebit &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAcssDebit(displayPreference: $displayPreference)'; } 
 }
