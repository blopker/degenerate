// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_mandate_options_payto.dart';/// 
@immutable final class InvoicePaymentMethodOptionsPayto {const InvoicePaymentMethodOptionsPayto({this.mandateOptions});

factory InvoicePaymentMethodOptionsPayto.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsPayto(
  mandateOptions: json['mandate_options'] != null ? InvoiceMandateOptionsPayto.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
); }

final InvoiceMandateOptionsPayto? mandateOptions;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options'}.contains(key)); } 
InvoicePaymentMethodOptionsPayto copyWith({InvoiceMandateOptionsPayto Function()? mandateOptions}) { return InvoicePaymentMethodOptionsPayto(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsPayto &&
          mandateOptions == other.mandateOptions; } 
@override int get hashCode { return mandateOptions.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsPayto(mandateOptions: $mandateOptions)'; } 
 }
