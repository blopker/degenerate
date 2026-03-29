// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_param35_mandate_options.dart';final class InvoicePaymentMethodOptionsParam35 {const InvoicePaymentMethodOptionsParam35({this.mandateOptions});

factory InvoicePaymentMethodOptionsParam35.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam35(
  mandateOptions: json['mandate_options'] != null ? InvoicePaymentMethodOptionsParam35MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final InvoicePaymentMethodOptionsParam35MandateOptions? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
InvoicePaymentMethodOptionsParam35 copyWith({InvoicePaymentMethodOptionsParam35MandateOptions Function()? mandateOptions}) { return InvoicePaymentMethodOptionsParam35(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam35 &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam35(mandateOptions: $mandateOptions)'; } 
 }
