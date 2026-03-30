// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_intent_confirm_request_payment_method_options_bacs_debit_mandate_options.dart';final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit({this.mandateOptions});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitMandateOptions Function()? mandateOptions}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit(mandateOptions: $mandateOptions)'; } 
 }
