// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_intent_request_payment_method_options_bacs_debit_mandate_options.dart';final class PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit {const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit({this.mandateOptions});

factory PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit copyWith({PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptions Function()? mandateOptions}) { return PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebit(mandateOptions: $mandateOptions)'; } 
 }
