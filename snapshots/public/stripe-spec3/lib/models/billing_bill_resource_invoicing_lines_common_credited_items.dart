// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingBillResourceInvoicingLinesCommonCreditedItems {const BillingBillResourceInvoicingLinesCommonCreditedItems({required this.invoice, required this.invoiceLineItems, });

factory BillingBillResourceInvoicingLinesCommonCreditedItems.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesCommonCreditedItems(
  invoice: json['invoice'] as String,
  invoiceLineItems: (json['invoice_line_items'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Invoice containing the credited invoice line items
final String invoice;

/// Credited invoice line items
final List<String> invoiceLineItems;

Map<String, dynamic> toJson() { return {
  'invoice': invoice,
  'invoice_line_items': invoiceLineItems,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('invoice') && json['invoice'] is String &&
      json.containsKey('invoice_line_items'); } 
BillingBillResourceInvoicingLinesCommonCreditedItems copyWith({String? invoice, List<String>? invoiceLineItems, }) { return BillingBillResourceInvoicingLinesCommonCreditedItems(
  invoice: invoice ?? this.invoice,
  invoiceLineItems: invoiceLineItems ?? this.invoiceLineItems,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingLinesCommonCreditedItems &&
          invoice == other.invoice &&
          listEquals(invoiceLineItems, other.invoiceLineItems); } 
@override int get hashCode { return Object.hash(invoice, Object.hashAll(invoiceLineItems)); } 
@override String toString() { return 'BillingBillResourceInvoicingLinesCommonCreditedItems(invoice: $invoice, invoiceLineItems: $invoiceLineItems)'; } 
 }
