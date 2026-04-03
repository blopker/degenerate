// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_lines_common_proration_details.dart';/// 
@immutable final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent({required this.invoiceItem, required this.proration, this.prorationDetails, this.subscription, });

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent(
  invoiceItem: json['invoice_item'] as String,
  proration: json['proration'] as bool,
  prorationDetails: json['proration_details'] != null ? BillingBillResourceInvoicingLinesCommonProrationDetails.fromJson(json['proration_details'] as Map<String, dynamic>) : null,
  subscription: json['subscription'] as String?,
); }

/// The invoice item that generated this line item
final String invoiceItem;

/// Whether this is a proration
final bool proration;

/// Additional details for proration line items
final BillingBillResourceInvoicingLinesCommonProrationDetails? prorationDetails;

/// The subscription that the invoice item belongs to
final String? subscription;

Map<String, dynamic> toJson() { return {
  'invoice_item': invoiceItem,
  'proration': proration,
  if (prorationDetails != null) 'proration_details': prorationDetails?.toJson(),
  'subscription': ?subscription,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('invoice_item') && json['invoice_item'] is String &&
      json.containsKey('proration') && json['proration'] is bool; } 
BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent copyWith({String? invoiceItem, bool? proration, BillingBillResourceInvoicingLinesCommonProrationDetails? Function()? prorationDetails, String? Function()? subscription, }) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent(
  invoiceItem: invoiceItem ?? this.invoiceItem,
  proration: proration ?? this.proration,
  prorationDetails: prorationDetails != null ? prorationDetails() : this.prorationDetails,
  subscription: subscription != null ? subscription() : this.subscription,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent &&
          invoiceItem == other.invoiceItem &&
          proration == other.proration &&
          prorationDetails == other.prorationDetails &&
          subscription == other.subscription; } 
@override int get hashCode { return Object.hash(invoiceItem, proration, prorationDetails, subscription); } 
@override String toString() { return 'BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent(invoiceItem: $invoiceItem, proration: $proration, prorationDetails: $prorationDetails, subscription: $subscription)'; } 
 }
