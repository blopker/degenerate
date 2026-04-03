// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param42_mandate_options.dart';@immutable final class InvoicePaymentMethodOptionsParam42 {const InvoicePaymentMethodOptionsParam42({this.mandateOptions});

factory InvoicePaymentMethodOptionsParam42.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam42(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsParam42MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final InvoicePaymentMethodOptionsParam42MandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
InvoicePaymentMethodOptionsParam42 copyWith({InvoicePaymentMethodOptionsParam42MandateOptions Function()? mandateOptions}) { return InvoicePaymentMethodOptionsParam42(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam42 &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam42(mandateOptions: $mandateOptions)'; } 
 }
