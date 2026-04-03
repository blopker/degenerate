// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoice_item_parents_invoice_item_subscription_parent.dart';/// The type of parent that generated this invoice item
@immutable final class BillingBillResourceInvoiceItemParentsInvoiceItemParentType {const BillingBillResourceInvoiceItemParentsInvoiceItemParentType._(this.value);

factory BillingBillResourceInvoiceItemParentsInvoiceItemParentType.fromJson(String json) { return switch (json) {
  'subscription_details' => subscriptionDetails,
  _ => BillingBillResourceInvoiceItemParentsInvoiceItemParentType._(json),
}; }

static const BillingBillResourceInvoiceItemParentsInvoiceItemParentType subscriptionDetails = BillingBillResourceInvoiceItemParentsInvoiceItemParentType._('subscription_details');

static const List<BillingBillResourceInvoiceItemParentsInvoiceItemParentType> values = [subscriptionDetails];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingBillResourceInvoiceItemParentsInvoiceItemParentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingBillResourceInvoiceItemParentsInvoiceItemParentType($value)'; } 
 }
/// 
@immutable final class BillingBillResourceInvoiceItemParentsInvoiceItemParent {const BillingBillResourceInvoiceItemParentsInvoiceItemParent({required this.type, this.subscriptionDetails, });

factory BillingBillResourceInvoiceItemParentsInvoiceItemParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoiceItemParentsInvoiceItemParent(
  subscriptionDetails: json['subscription_details'] != null ? BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent.fromJson(json['subscription_details'] as Map<String, dynamic>) : null,
  type: BillingBillResourceInvoiceItemParentsInvoiceItemParentType.fromJson(json['type'] as String),
); }

/// Details about the subscription that generated this invoice item
final BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent? subscriptionDetails;

/// The type of parent that generated this invoice item
final BillingBillResourceInvoiceItemParentsInvoiceItemParentType type;

Map<String, dynamic> toJson() { return {
  if (subscriptionDetails != null) 'subscription_details': subscriptionDetails?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BillingBillResourceInvoiceItemParentsInvoiceItemParent copyWith({BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent? Function()? subscriptionDetails, BillingBillResourceInvoiceItemParentsInvoiceItemParentType? type, }) { return BillingBillResourceInvoiceItemParentsInvoiceItemParent(
  subscriptionDetails: subscriptionDetails != null ? subscriptionDetails() : this.subscriptionDetails,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoiceItemParentsInvoiceItemParent &&
          subscriptionDetails == other.subscriptionDetails &&
          type == other.type; } 
@override int get hashCode { return Object.hash(subscriptionDetails, type); } 
@override String toString() { return 'BillingBillResourceInvoiceItemParentsInvoiceItemParent(subscriptionDetails: $subscriptionDetails, type: $type)'; } 
 }
