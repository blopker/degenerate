// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoice_item_parents_invoice_item_parent.dart';/// The parent that generated this invoice item.
final class InvoiceitemParent {const InvoiceitemParent({this.billingBillResourceInvoiceItemParentsInvoiceItemParent});

factory InvoiceitemParent.fromJson(Map<String, dynamic> json) { return InvoiceitemParent(
  billingBillResourceInvoiceItemParentsInvoiceItemParent: BillingBillResourceInvoiceItemParentsInvoiceItemParent.canParse(json) ? BillingBillResourceInvoiceItemParentsInvoiceItemParent.fromJson(json) : null,
); }

final BillingBillResourceInvoiceItemParentsInvoiceItemParent? billingBillResourceInvoiceItemParentsInvoiceItemParent;

/// At least one variant must be present.
bool get isValid { return billingBillResourceInvoiceItemParentsInvoiceItemParent != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingBillResourceInvoiceItemParentsInvoiceItemParent?.toJson(),
}; } 
 }
