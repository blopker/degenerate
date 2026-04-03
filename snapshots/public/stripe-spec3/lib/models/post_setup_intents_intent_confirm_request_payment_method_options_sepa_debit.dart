// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_sepa_debit_mandate_options.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit({this.mandateOptions});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptions Function()? mandateOptions}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit(mandateOptions: $mandateOptions)'; } 
 }
