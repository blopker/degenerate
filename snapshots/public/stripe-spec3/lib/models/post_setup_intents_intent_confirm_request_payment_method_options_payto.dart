// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_payto_mandate_options.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto({this.mandateOptions});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions Function()? mandateOptions}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPayto(mandateOptions: $mandateOptions)'; } 
 }
