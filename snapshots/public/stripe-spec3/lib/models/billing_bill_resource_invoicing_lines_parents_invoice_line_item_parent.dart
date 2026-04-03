// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_lines_parents_invoice_line_item_invoice_item_parent.dart';import 'billing_bill_resource_invoicing_lines_parents_invoice_line_item_subscription_item_parent.dart';/// The type of parent that generated this line item
@immutable final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType._(this.value);

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType.fromJson(String json) { return switch (json) {
  'invoice_item_details' => invoiceItemDetails,
  'subscription_item_details' => subscriptionItemDetails,
  _ => BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType._(json),
}; }

static const BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType invoiceItemDetails = BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType._('invoice_item_details');

static const BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType subscriptionItemDetails = BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType._('subscription_item_details');

static const List<BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType> values = [invoiceItemDetails, subscriptionItemDetails];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType($value)'; } 
 }
/// 
@immutable final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent({required this.type, this.invoiceItemDetails, this.subscriptionItemDetails, });

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent(
  invoiceItemDetails: json['invoice_item_details'] != null ? BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent.fromJson(json['invoice_item_details'] as Map<String, dynamic>) : null,
  subscriptionItemDetails: json['subscription_item_details'] != null ? BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent.fromJson(json['subscription_item_details'] as Map<String, dynamic>) : null,
  type: BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType.fromJson(json['type'] as String),
); }

/// Details about the invoice item that generated this line item
final BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent? invoiceItemDetails;

/// Details about the subscription item that generated this line item
final BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent? subscriptionItemDetails;

/// The type of parent that generated this line item
final BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType type;

Map<String, dynamic> toJson() { return {
  if (invoiceItemDetails != null) 'invoice_item_details': invoiceItemDetails?.toJson(),
  if (subscriptionItemDetails != null) 'subscription_item_details': subscriptionItemDetails?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent copyWith({BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent? Function()? invoiceItemDetails, BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent? Function()? subscriptionItemDetails, BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType? type, }) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent(
  invoiceItemDetails: invoiceItemDetails != null ? invoiceItemDetails() : this.invoiceItemDetails,
  subscriptionItemDetails: subscriptionItemDetails != null ? subscriptionItemDetails() : this.subscriptionItemDetails,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent &&
          invoiceItemDetails == other.invoiceItemDetails &&
          subscriptionItemDetails == other.subscriptionItemDetails &&
          type == other.type; } 
@override int get hashCode { return Object.hash(invoiceItemDetails, subscriptionItemDetails, type); } 
@override String toString() { return 'BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent(invoiceItemDetails: $invoiceItemDetails, subscriptionItemDetails: $subscriptionItemDetails, type: $type)'; } 
 }
