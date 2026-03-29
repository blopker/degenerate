// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_lines_parents_invoice_line_item_invoice_item_parent.dart';/// Details about the invoice item that generated this line item
final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentInvoiceItemDetails {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentInvoiceItemDetails({this.billingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent});

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentInvoiceItemDetails.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentInvoiceItemDetails(
  billingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent: BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent.canParse(json) ? BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent.fromJson(json) : null,
); }

final BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent? billingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent;

/// At least one variant must be present.
bool get isValid { return billingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent?.toJson(),
}; } 
 }
