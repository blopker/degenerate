// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_lines_common_proration_details.dart';/// Additional details for proration line items
final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParentProrationDetails {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParentProrationDetails({this.billingBillResourceInvoicingLinesCommonProrationDetails});

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParentProrationDetails.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParentProrationDetails(
  billingBillResourceInvoicingLinesCommonProrationDetails: BillingBillResourceInvoicingLinesCommonProrationDetails.canParse(json) ? BillingBillResourceInvoicingLinesCommonProrationDetails.fromJson(json) : null,
); }

final BillingBillResourceInvoicingLinesCommonProrationDetails? billingBillResourceInvoicingLinesCommonProrationDetails;

/// At least one variant must be present.
bool get isValid { return billingBillResourceInvoicingLinesCommonProrationDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingBillResourceInvoicingLinesCommonProrationDetails?.toJson(),
}; } 
 }
