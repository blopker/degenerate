// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent {const BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent({required this.subscription, this.subscriptionItem, });

factory BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent(
  subscription: json['subscription'] as String,
  subscriptionItem: json['subscription_item'] as String?,
); }

/// The subscription that generated this invoice item
final String subscription;

/// The subscription item that generated this invoice item
final String? subscriptionItem;

Map<String, dynamic> toJson() { return {
  'subscription': subscription,
  'subscription_item': ?subscriptionItem,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('subscription') && json['subscription'] is String; } 
BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent copyWith({String? subscription, String Function()? subscriptionItem, }) { return BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent(
  subscription: subscription ?? this.subscription,
  subscriptionItem: subscriptionItem != null ? subscriptionItem() : this.subscriptionItem,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent &&
          subscription == other.subscription &&
          subscriptionItem == other.subscriptionItem; } 
@override int get hashCode { return Object.hash(subscription, subscriptionItem); } 
@override String toString() { return 'BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent(subscription: $subscription, subscriptionItem: $subscriptionItem)'; } 
 }
