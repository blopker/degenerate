// GENERATED CODE - DO NOT MODIFY BY HAND

import 'setup_intent_payment_method_options_mandate_options_payto.dart';/// 
final class SetupIntentPaymentMethodOptionsPayto {const SetupIntentPaymentMethodOptionsPayto({this.mandateOptions});

factory SetupIntentPaymentMethodOptionsPayto.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsPayto(
  mandateOptions: json['mandate_options'] != null ? SetupIntentPaymentMethodOptionsMandateOptionsPayto.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final SetupIntentPaymentMethodOptionsMandateOptionsPayto? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SetupIntentPaymentMethodOptionsPayto copyWith({SetupIntentPaymentMethodOptionsMandateOptionsPayto Function()? mandateOptions}) { return SetupIntentPaymentMethodOptionsPayto(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsPayto &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsPayto(mandateOptions: $mandateOptions)'; } 
 }
