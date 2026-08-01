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
@immutable final class BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent {const BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent({required this.type, this.invoiceItemDetails = const Omittable.absent(), this.subscriptionItemDetails = const Omittable.absent(), });

factory BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent(
  invoiceItemDetails: json.containsKey('invoice_item_details') ? Omittable(json['invoice_item_details'] != null ? BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent.fromJson(json['invoice_item_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  subscriptionItemDetails: json.containsKey('subscription_item_details') ? Omittable(json['subscription_item_details'] != null ? BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent.fromJson(json['subscription_item_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType.fromJson(json['type'] as String),
); }

/// Details about the invoice item that generated this line item
final Omittable<BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent?> invoiceItemDetails;

/// Details about the subscription item that generated this line item
final Omittable<BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent?> subscriptionItemDetails;

/// The type of parent that generated this line item
final BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType type;

Map<String, dynamic> toJson() { return {
  if (invoiceItemDetails.isPresent) 'invoice_item_details': invoiceItemDetails.value?.toJson(),
  if (subscriptionItemDetails.isPresent) 'subscription_item_details': subscriptionItemDetails.value?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent copyWith({Omittable<BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent?>? invoiceItemDetails, Omittable<BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent?>? subscriptionItemDetails, BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType? type, }) { return BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent(
  invoiceItemDetails: invoiceItemDetails ?? this.invoiceItemDetails,
  subscriptionItemDetails: subscriptionItemDetails ?? this.subscriptionItemDetails,
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
