// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param20_mandate_options.dart';@immutable final class InvoicePaymentMethodOptionsParam20 {const InvoicePaymentMethodOptionsParam20({this.mandateOptions});

factory InvoicePaymentMethodOptionsParam20.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam20(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsParam20MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final InvoicePaymentMethodOptionsParam20MandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
InvoicePaymentMethodOptionsParam20 copyWith({InvoicePaymentMethodOptionsParam20MandateOptions Function()? mandateOptions}) { return InvoicePaymentMethodOptionsParam20(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam20 &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam20(mandateOptions: $mandateOptions)'; } 
 }
