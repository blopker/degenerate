// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_konbini.dart';/// This sub-hash contains details about the Konbini payment method options to pass to invoices created by the subscription.
final class SubscriptionsResourcePaymentMethodOptionsKonbini {const SubscriptionsResourcePaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsKonbini});

factory SubscriptionsResourcePaymentMethodOptionsKonbini.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePaymentMethodOptionsKonbini(
  invoicePaymentMethodOptionsKonbini: InvoicePaymentMethodOptionsKonbini.canParse(json) ? InvoicePaymentMethodOptionsKonbini.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsKonbini? invoicePaymentMethodOptionsKonbini;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsKonbini != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsKonbini?.toJson(),
}; } 
 }
