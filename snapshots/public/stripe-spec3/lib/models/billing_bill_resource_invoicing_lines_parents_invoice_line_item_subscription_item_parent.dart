// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_lines_common_proration_details.dart';/// 
final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent({this.invoiceItem, required this.proration, this.prorationDetails, this.subscription, required this.subscriptionItem, });

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent(
  invoiceItem: json['invoice_item'] as String?,
  proration: json['proration'] as bool,
  prorationDetails: json['proration_details'] != null ? BillingBillResourceInvoicingLinesCommonProrationDetails.fromJson(json['proration_details'] as Map<String, dynamic>) : null,
  subscription: json['subscription'] as String?,
  subscriptionItem: json['subscription_item'] as String,
); }

/// The invoice item that generated this line item
final String? invoiceItem;

/// Whether this is a proration
final bool proration;

/// Additional details for proration line items
final BillingBillResourceInvoicingLinesCommonProrationDetails? prorationDetails;

/// The subscription that the subscription item belongs to
final String? subscription;

/// The subscription item that generated this line item
final String subscriptionItem;

Map<String, dynamic> toJson() { return {
  'invoice_item': ?invoiceItem,
  'proration': proration,
  if (prorationDetails != null) 'proration_details': prorationDetails?.toJson(),
  'subscription': ?subscription,
  'subscription_item': subscriptionItem,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('proration') && json['proration'] is bool &&
      json.containsKey('subscription_item') && json['subscription_item'] is String; } 
BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent copyWith({String? Function()? invoiceItem, bool? proration, BillingBillResourceInvoicingLinesCommonProrationDetails? Function()? prorationDetails, String? Function()? subscription, String? subscriptionItem, }) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent(
  invoiceItem: invoiceItem != null ? invoiceItem() : this.invoiceItem,
  proration: proration ?? this.proration,
  prorationDetails: prorationDetails != null ? prorationDetails() : this.prorationDetails,
  subscription: subscription != null ? subscription() : this.subscription,
  subscriptionItem: subscriptionItem ?? this.subscriptionItem,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent &&
          invoiceItem == other.invoiceItem &&
          proration == other.proration &&
          prorationDetails == other.prorationDetails &&
          subscription == other.subscription &&
          subscriptionItem == other.subscriptionItem; } 
@override int get hashCode { return Object.hash(invoiceItem, proration, prorationDetails, subscription, subscriptionItem); } 
@override String toString() { return 'BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent(invoiceItem: $invoiceItem, proration: $proration, prorationDetails: $prorationDetails, subscription: $subscription, subscriptionItem: $subscriptionItem)'; } 
 }
