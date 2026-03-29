// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_rendering_pdf.dart';/// Invoice pdf rendering options
final class InvoicesResourceInvoiceRenderingPdf {const InvoicesResourceInvoiceRenderingPdf({this.invoiceRenderingPdf});

factory InvoicesResourceInvoiceRenderingPdf.fromJson(Map<String, dynamic> json) { return InvoicesResourceInvoiceRenderingPdf(
  invoiceRenderingPdf: InvoiceRenderingPdf.canParse(json) ? InvoiceRenderingPdf.fromJson(json) : null,
); }

final InvoiceRenderingPdf? invoiceRenderingPdf;

/// At least one variant must be present.
bool get isValid { return invoiceRenderingPdf != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoiceRenderingPdf?.toJson(),
}; } 
 }
