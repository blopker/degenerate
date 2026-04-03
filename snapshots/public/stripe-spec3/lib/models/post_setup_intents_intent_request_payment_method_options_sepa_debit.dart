// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_request_payment_method_options_sepa_debit_mandate_options.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit {const PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit({this.mandateOptions});

factory PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit copyWith({PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptions Function()? mandateOptions}) { return PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebit(mandateOptions: $mandateOptions)'; } 
 }
