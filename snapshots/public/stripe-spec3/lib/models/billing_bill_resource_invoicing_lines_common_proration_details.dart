// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_lines_common_credited_items.dart';/// 
@immutable final class BillingBillResourceInvoicingLinesCommonProrationDetails {const BillingBillResourceInvoicingLinesCommonProrationDetails({this.creditedItems = const Omittable.absent()});

factory BillingBillResourceInvoicingLinesCommonProrationDetails.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesCommonProrationDetails(
  creditedItems: json.containsKey('credited_items') ? Omittable(json['credited_items'] != null ? BillingBillResourceInvoicingLinesCommonCreditedItems.fromJson(json['credited_items'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
final Omittable<BillingBillResourceInvoicingLinesCommonCreditedItems?> creditedItems;

Map<String, dynamic> toJson() { return {
  if (creditedItems.isPresent) 'credited_items': creditedItems.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'credited_items'}.contains(key)); } 
BillingBillResourceInvoicingLinesCommonProrationDetails copyWith({Omittable<BillingBillResourceInvoicingLinesCommonCreditedItems?>? creditedItems}) { return BillingBillResourceInvoicingLinesCommonProrationDetails(
  creditedItems: creditedItems ?? this.creditedItems,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingLinesCommonProrationDetails &&
          creditedItems == other.creditedItems; } 
@override int get hashCode { return creditedItems.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingLinesCommonProrationDetails(creditedItems: $creditedItems)'; } 
 }
