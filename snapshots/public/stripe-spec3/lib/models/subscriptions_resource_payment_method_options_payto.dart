// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_payto.dart';/// This sub-hash contains details about the PayTo payment method options to pass to invoices created by the subscription.
final class SubscriptionsResourcePaymentMethodOptionsPayto {const SubscriptionsResourcePaymentMethodOptionsPayto({this.invoicePaymentMethodOptionsPayto});

factory SubscriptionsResourcePaymentMethodOptionsPayto.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePaymentMethodOptionsPayto(
  invoicePaymentMethodOptionsPayto: InvoicePaymentMethodOptionsPayto.canParse(json) ? InvoicePaymentMethodOptionsPayto.fromJson(json) : null,
); }

final InvoicePaymentMethodOptionsPayto? invoicePaymentMethodOptionsPayto;

/// At least one variant must be present.
bool get isValid { return invoicePaymentMethodOptionsPayto != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicePaymentMethodOptionsPayto?.toJson(),
}; } 
 }
