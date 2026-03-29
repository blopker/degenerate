// GENERATED CODE - DO NOT MODIFY BY HAND

import 'setup_intent_payment_method_options_mandate_options_bacs_debit.dart';/// 
final class SetupIntentPaymentMethodOptionsBacsDebit {const SetupIntentPaymentMethodOptionsBacsDebit({this.mandateOptions});

factory SetupIntentPaymentMethodOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsBacsDebit(
  mandateOptions: json['mandate_options'] != null ? SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SetupIntentPaymentMethodOptionsBacsDebit copyWith({SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit Function()? mandateOptions}) { return SetupIntentPaymentMethodOptionsBacsDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsBacsDebit &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsBacsDebit(mandateOptions: $mandateOptions)'; } 
 }
