// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_bill_resource_invoicing_parents_invoice_subscription_parent_subscription.dart';import 'subscription.dart';/// 
@immutable final class BillingBillResourceInvoicingParentsInvoiceSubscriptionParent {const BillingBillResourceInvoicingParentsInvoiceSubscriptionParent({required this.subscription, this.metadata = const Omittable.absent(), this.subscriptionProrationDate, });

factory BillingBillResourceInvoicingParentsInvoiceSubscriptionParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingParentsInvoiceSubscriptionParent(
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  subscription: OneOf2.parse(json['subscription'], fromA: (v) => v as String, fromB: (v) => Subscription.fromJson(v as Map<String, dynamic>),),
  subscriptionProrationDate: json['subscription_proration_date'] != null ? (json['subscription_proration_date'] as num).toInt() : null,
); }

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) defined as subscription metadata when an invoice is created. Becomes an immutable snapshot of the subscription metadata at the time of invoice finalization.
///  *Note: This attribute is populated only for invoices created on or after June 29, 2023.*
final Omittable<Map<String,String>?> metadata;

/// The subscription that generated this invoice
final BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription subscription;

/// Only set for upcoming invoices that preview prorations. The time used to calculate prorations.
final int? subscriptionProrationDate;

Map<String, dynamic> toJson() { return {
  if (metadata.isPresent) 'metadata': metadata.value,
  'subscription': subscription.toJson(),
  'subscription_proration_date': ?subscriptionProrationDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('subscription'); } 
BillingBillResourceInvoicingParentsInvoiceSubscriptionParent copyWith({Omittable<Map<String,String>?>? metadata, BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription? subscription, int? Function()? subscriptionProrationDate, }) { return BillingBillResourceInvoicingParentsInvoiceSubscriptionParent(
  metadata: metadata ?? this.metadata,
  subscription: subscription ?? this.subscription,
  subscriptionProrationDate: subscriptionProrationDate != null ? subscriptionProrationDate() : this.subscriptionProrationDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoicingParentsInvoiceSubscriptionParent &&
          metadata == other.metadata &&
          subscription == other.subscription &&
          subscriptionProrationDate == other.subscriptionProrationDate; } 
@override int get hashCode { return Object.hash(metadata, subscription, subscriptionProrationDate); } 
@override String toString() { return 'BillingBillResourceInvoicingParentsInvoiceSubscriptionParent(metadata: $metadata, subscription: $subscription, subscriptionProrationDate: $subscriptionProrationDate)'; } 
 }
