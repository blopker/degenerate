// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_request_payment_method_options_bacs_debit_mandate_options.dart';final class PostSetupIntentsRequestPaymentMethodOptionsBacsDebit {const PostSetupIntentsRequestPaymentMethodOptionsBacsDebit({this.mandateOptions});

factory PostSetupIntentsRequestPaymentMethodOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: json['mandate_options'] != null ? PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsRequestPaymentMethodOptionsBacsDebit copyWith({PostSetupIntentsRequestPaymentMethodOptionsBacsDebitMandateOptions Function()? mandateOptions}) { return PostSetupIntentsRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsBacsDebit &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsBacsDebit(mandateOptions: $mandateOptions)'; } 
 }
