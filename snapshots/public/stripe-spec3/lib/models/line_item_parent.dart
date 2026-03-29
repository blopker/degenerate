// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_lines_parents_invoice_line_item_parent.dart';/// The parent that generated this line item.
final class LineItemParent {const LineItemParent({this.billingBillResourceInvoicingLinesParentsInvoiceLineItemParent});

factory LineItemParent.fromJson(Map<String, dynamic> json) { return LineItemParent(
  billingBillResourceInvoicingLinesParentsInvoiceLineItemParent: BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent.canParse(json) ? BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent.fromJson(json) : null,
); }

final BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent? billingBillResourceInvoicingLinesParentsInvoiceLineItemParent;

/// At least one variant must be present.
bool get isValid { return billingBillResourceInvoicingLinesParentsInvoiceLineItemParent != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingBillResourceInvoicingLinesParentsInvoiceLineItemParent?.toJson(),
}; } 
 }
