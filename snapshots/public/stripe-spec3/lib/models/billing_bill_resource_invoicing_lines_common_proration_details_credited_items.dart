// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_lines_common_credited_items.dart';/// For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
final class BillingBillResourceInvoicingLinesCommonProrationDetailsCreditedItems {const BillingBillResourceInvoicingLinesCommonProrationDetailsCreditedItems({this.billingBillResourceInvoicingLinesCommonCreditedItems});

factory BillingBillResourceInvoicingLinesCommonProrationDetailsCreditedItems.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesCommonProrationDetailsCreditedItems(
  billingBillResourceInvoicingLinesCommonCreditedItems: BillingBillResourceInvoicingLinesCommonCreditedItems.canParse(json) ? BillingBillResourceInvoicingLinesCommonCreditedItems.fromJson(json) : null,
); }

final BillingBillResourceInvoicingLinesCommonCreditedItems? billingBillResourceInvoicingLinesCommonCreditedItems;

/// At least one variant must be present.
bool get isValid { return billingBillResourceInvoicingLinesCommonCreditedItems != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingBillResourceInvoicingLinesCommonCreditedItems?.toJson(),
}; } 
 }
