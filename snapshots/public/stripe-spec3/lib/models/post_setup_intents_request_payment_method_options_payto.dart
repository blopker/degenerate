// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_request_payment_method_options_payto_mandate_options.dart';final class PostSetupIntentsRequestPaymentMethodOptionsPayto {const PostSetupIntentsRequestPaymentMethodOptionsPayto({this.mandateOptions});

factory PostSetupIntentsRequestPaymentMethodOptionsPayto.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsPayto(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodOptionsPayto copyWith({PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions Function()? mandateOptions}) { return PostSetupIntentsRequestPaymentMethodOptionsPayto(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsPayto &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPayto(mandateOptions: $mandateOptions)'; } 
 }
