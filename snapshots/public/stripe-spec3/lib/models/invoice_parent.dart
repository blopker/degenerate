// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_parents_invoice_parent.dart';/// The parent that generated this invoice
final class InvoiceParent {const InvoiceParent({this.billingBillResourceInvoicingParentsInvoiceParent});

factory InvoiceParent.fromJson(Map<String, dynamic> json) { return InvoiceParent(
  billingBillResourceInvoicingParentsInvoiceParent: BillingBillResourceInvoicingParentsInvoiceParent.canParse(json) ? BillingBillResourceInvoicingParentsInvoiceParent.fromJson(json) : null,
); }

final BillingBillResourceInvoicingParentsInvoiceParent? billingBillResourceInvoicingParentsInvoiceParent;

/// At least one variant must be present.
bool get isValid { return billingBillResourceInvoicingParentsInvoiceParent != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingBillResourceInvoicingParentsInvoiceParent?.toJson(),
}; } 
 }
