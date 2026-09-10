// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_parents_invoice_quote_parent.dart';import 'billing_bill_resource_invoicing_parents_invoice_subscription_parent.dart';/// The type of parent that generated this invoice
@immutable final class BillingBillResourceInvoicingParentsInvoiceParentType {const BillingBillResourceInvoicingParentsInvoiceParentType._(this.value);

factory BillingBillResourceInvoicingParentsInvoiceParentType.fromJson(String json) { return switch (json) {
  'quote_details' => quoteDetails,
  'subscription_details' => subscriptionDetails,
  _ => BillingBillResourceInvoicingParentsInvoiceParentType._(json),
}; }

static const BillingBillResourceInvoicingParentsInvoiceParentType quoteDetails = BillingBillResourceInvoicingParentsInvoiceParentType._('quote_details');

static const BillingBillResourceInvoicingParentsInvoiceParentType subscriptionDetails = BillingBillResourceInvoicingParentsInvoiceParentType._('subscription_details');

static const List<BillingBillResourceInvoicingParentsInvoiceParentType> values = [quoteDetails, subscriptionDetails];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingBillResourceInvoicingParentsInvoiceParentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoicingParentsInvoiceParentType($value)'; } 
 }
/// 
@immutable final class BillingBillResourceInvoicingParentsInvoiceParent {const BillingBillResourceInvoicingParentsInvoiceParent({required this.type, this.quoteDetails = const Omittable.absent(), this.subscriptionDetails = const Omittable.absent(), });

factory BillingBillResourceInvoicingParentsInvoiceParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingParentsInvoiceParent(
  quoteDetails: json.containsKey('quote_details') ? Omittable(json['quote_details'] != null ? BillingBillResourceInvoicingParentsInvoiceQuoteParent.fromJson(json['quote_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  subscriptionDetails: json.containsKey('subscription_details') ? Omittable(json['subscription_details'] != null ? BillingBillResourceInvoicingParentsInvoiceSubscriptionParent.fromJson(json['subscription_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: BillingBillResourceInvoicingParentsInvoiceParentType.fromJson(json['type'] as String),
); }

/// Details about the quote that generated this invoice
final Omittable<BillingBillResourceInvoicingParentsInvoiceQuoteParent?> quoteDetails;

/// Details about the subscription that generated this invoice
final Omittable<BillingBillResourceInvoicingParentsInvoiceSubscriptionParent?> subscriptionDetails;

/// The type of parent that generated this invoice
final BillingBillResourceInvoicingParentsInvoiceParentType type;

Map<String, dynamic> toJson() { return {
  if (quoteDetails.isPresent) 'quote_details': quoteDetails.value?.toJson(),
  if (subscriptionDetails.isPresent) 'subscription_details': subscriptionDetails.value?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BillingBillResourceInvoicingParentsInvoiceParent copyWith({Omittable<BillingBillResourceInvoicingParentsInvoiceQuoteParent?>? quoteDetails, Omittable<BillingBillResourceInvoicingParentsInvoiceSubscriptionParent?>? subscriptionDetails, BillingBillResourceInvoicingParentsInvoiceParentType? type, }) { return BillingBillResourceInvoicingParentsInvoiceParent(
  quoteDetails: quoteDetails ?? this.quoteDetails,
  subscriptionDetails: subscriptionDetails ?? this.subscriptionDetails,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingParentsInvoiceParent &&
          quoteDetails == other.quoteDetails &&
          subscriptionDetails == other.subscriptionDetails &&
          type == other.type; } 
@override int get hashCode { return Object.hash(quoteDetails, subscriptionDetails, type); } 
@override String toString() { return 'BillingBillResourceInvoicingParentsInvoiceParent(quoteDetails: $quoteDetails, subscriptionDetails: $subscriptionDetails, type: $type)'; } 
 }
