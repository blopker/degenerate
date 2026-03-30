// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_lines_common_credited_items.dart';/// 
final class BillingBillResourceInvoicingLinesCommonProrationDetails {const BillingBillResourceInvoicingLinesCommonProrationDetails({this.creditedItems});

factory BillingBillResourceInvoicingLinesCommonProrationDetails.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesCommonProrationDetails(
  creditedItems: json['credited_items'] != null ? BillingBillResourceInvoicingLinesCommonCreditedItems.fromJson(json['credited_items'] as Map<String, dynamic>) : null,
); }

/// For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
final BillingBillResourceInvoicingLinesCommonCreditedItems? creditedItems;

Map<String, dynamic> toJson() { return {
  if (creditedItems != null) 'credited_items': creditedItems?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'credited_items'}.contains(key)); } 
BillingBillResourceInvoicingLinesCommonProrationDetails copyWith({BillingBillResourceInvoicingLinesCommonCreditedItems? Function()? creditedItems}) { return BillingBillResourceInvoicingLinesCommonProrationDetails(
  creditedItems: creditedItems != null ? creditedItems() : this.creditedItems,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingLinesCommonProrationDetails &&
          creditedItems == other.creditedItems; } 
@override int get hashCode { return creditedItems.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingLinesCommonProrationDetails(creditedItems: $creditedItems)'; } 
 }
