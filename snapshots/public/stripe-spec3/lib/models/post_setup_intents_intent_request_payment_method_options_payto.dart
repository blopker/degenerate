// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_intent_request_payment_method_options_payto_mandate_options.dart';final class PostSetupIntentsIntentRequestPaymentMethodOptionsPayto {const PostSetupIntentsIntentRequestPaymentMethodOptionsPayto({this.mandateOptions});

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPayto.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsPayto(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodOptionsPayto copyWith({PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions Function()? mandateOptions}) { return PostSetupIntentsIntentRequestPaymentMethodOptionsPayto(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsPayto &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPayto(mandateOptions: $mandateOptions)'; } 
 }
