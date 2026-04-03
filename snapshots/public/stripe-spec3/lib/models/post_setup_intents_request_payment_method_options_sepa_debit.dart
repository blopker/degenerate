// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_sepa_debit_mandate_options.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsSepaDebit {const PostSetupIntentsRequestPaymentMethodOptionsSepaDebit({this.mandateOptions});

factory PostSetupIntentsRequestPaymentMethodOptionsSepaDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsSepaDebit(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodOptionsSepaDebit copyWith({PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptions Function()? mandateOptions}) { return PostSetupIntentsRequestPaymentMethodOptionsSepaDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsSepaDebit &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsSepaDebit(mandateOptions: $mandateOptions)'; } 
 }
