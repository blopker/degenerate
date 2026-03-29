// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoices_resource_invoice_rendering.dart';/// The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
final class InvoiceRendering {const InvoiceRendering({this.invoicesResourceInvoiceRendering});

factory InvoiceRendering.fromJson(Map<String, dynamic> json) { return InvoiceRendering(
  invoicesResourceInvoiceRendering: InvoicesResourceInvoiceRendering.canParse(json) ? InvoicesResourceInvoiceRendering.fromJson(json) : null,
); }

final InvoicesResourceInvoiceRendering? invoicesResourceInvoiceRendering;

/// At least one variant must be present.
bool get isValid { return invoicesResourceInvoiceRendering != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicesResourceInvoiceRendering?.toJson(),
}; } 
 }
