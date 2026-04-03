// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param5_mandate_options.dart';@immutable final class InvoicePaymentMethodOptionsParam5 {const InvoicePaymentMethodOptionsParam5({this.mandateOptions});

factory InvoicePaymentMethodOptionsParam5.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam5(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsParam5MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final InvoicePaymentMethodOptionsParam5MandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
InvoicePaymentMethodOptionsParam5 copyWith({InvoicePaymentMethodOptionsParam5MandateOptions Function()? mandateOptions}) { return InvoicePaymentMethodOptionsParam5(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam5 &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam5(mandateOptions: $mandateOptions)'; } 
 }
