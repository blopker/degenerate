// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_invoice_creation.dart';/// Configuration for creating invoice for payment mode payment links.
final class PaymentLinkInvoiceCreation {const PaymentLinkInvoiceCreation({this.paymentLinksResourceInvoiceCreation});

factory PaymentLinkInvoiceCreation.fromJson(Map<String, dynamic> json) { return PaymentLinkInvoiceCreation(
  paymentLinksResourceInvoiceCreation: PaymentLinksResourceInvoiceCreation.canParse(json) ? PaymentLinksResourceInvoiceCreation.fromJson(json) : null,
); }

final PaymentLinksResourceInvoiceCreation? paymentLinksResourceInvoiceCreation;

/// At least one variant must be present.
bool get isValid { return paymentLinksResourceInvoiceCreation != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentLinksResourceInvoiceCreation?.toJson(),
}; } 
 }
