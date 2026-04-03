// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param12_mandate_options.dart';@immutable final class InvoicePaymentMethodOptionsParam12 {const InvoicePaymentMethodOptionsParam12({this.mandateOptions});

factory InvoicePaymentMethodOptionsParam12.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam12(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsParam12MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final InvoicePaymentMethodOptionsParam12MandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
InvoicePaymentMethodOptionsParam12 copyWith({InvoicePaymentMethodOptionsParam12MandateOptions Function()? mandateOptions}) { return InvoicePaymentMethodOptionsParam12(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam12 &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam12(mandateOptions: $mandateOptions)'; } 
 }
