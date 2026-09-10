// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_lines_common_proration_details.dart';/// 
@immutable final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent({required this.invoiceItem, required this.proration, this.prorationDetails = const Omittable.absent(), this.subscription = const Omittable.absent(), });

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent(
  invoiceItem: json['invoice_item'] as String,
  proration: json['proration'] as bool,
  prorationDetails: json.containsKey('proration_details') ? Omittable(json['proration_details'] != null ? BillingBillResourceInvoicingLinesCommonProrationDetails.fromJson(json['proration_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  subscription: json.containsKey('subscription') ? Omittable(json['subscription'] as String?) : const Omittable.absent(),
); }

/// The invoice item that generated this line item
final String invoiceItem;

/// Whether this is a proration
final bool proration;

/// Additional details for proration line items
final Omittable<BillingBillResourceInvoicingLinesCommonProrationDetails?> prorationDetails;

/// The subscription that the invoice item belongs to
final Omittable<String?> subscription;

Map<String, dynamic> toJson() { return {
  'invoice_item': invoiceItem,
  'proration': proration,
  if (prorationDetails.isPresent) 'proration_details': prorationDetails.value?.toJson(),
  if (subscription.isPresent) 'subscription': subscription.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('invoice_item') && json['invoice_item'] is String &&
      json.containsKey('proration') && json['proration'] is bool; } 
BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent copyWith({String? invoiceItem, bool? proration, Omittable<BillingBillResourceInvoicingLinesCommonProrationDetails?>? prorationDetails, Omittable<String?>? subscription, }) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent(
  invoiceItem: invoiceItem ?? this.invoiceItem,
  proration: proration ?? this.proration,
  prorationDetails: prorationDetails ?? this.prorationDetails,
  subscription: subscription ?? this.subscription,
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
