// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_konbini.dart';/// If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
final class InvoicesPaymentMethodOptionsKonbini {const InvoicesPaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsKonbini});

factory InvoicesPaymentMethodOptionsKonbini.fromJson(Map<String, dynamic> json) { return InvoicesPaymentMethodOptionsKonbini(
  invoicePaymentMethodOptionsKonbini: InvoicePaymentMethodOptionsKonbini.canParse(json) ? InvoicePaymentMethodOptionsKonbini.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsKonbini? invoicePaymentMethodOptionsKonbini;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsKonbini != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsKonbini?.toJson(),
}; } 
 }
