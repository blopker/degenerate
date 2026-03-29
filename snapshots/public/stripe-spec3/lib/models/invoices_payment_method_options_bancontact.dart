// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_bancontact.dart';/// If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
final class InvoicesPaymentMethodOptionsBancontact {const InvoicesPaymentMethodOptionsBancontact({this.invoicePaymentMethodOptionsBancontact});

factory InvoicesPaymentMethodOptionsBancontact.fromJson(Map<String, dynamic> json) { return InvoicesPaymentMethodOptionsBancontact(
  invoicePaymentMethodOptionsBancontact: InvoicePaymentMethodOptionsBancontact.canParse(json) ? InvoicePaymentMethodOptionsBancontact.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsBancontact? invoicePaymentMethodOptionsBancontact;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsBancontact != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsBancontact?.toJson(),
}; } 
 }
