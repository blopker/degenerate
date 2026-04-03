// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalFlowsSubscriptionUpdateConfirmItem {const PortalFlowsSubscriptionUpdateConfirmItem({this.id, this.price, this.quantity, });

factory PortalFlowsSubscriptionUpdateConfirmItem.fromJson(Map<String, dynamic> json) { return PortalFlowsSubscriptionUpdateConfirmItem(
  id: json['id'] as String?,
  price: json['price'] as String?,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
); }

/// The ID of the [subscription item](https://docs.stripe.com/api/subscriptions/object#subscription_object-items-data-id) to be updated.
final String? id;

/// The price the customer should subscribe to through this flow. The price must also be included in the configuration's [`features.subscription_update.products`](https://docs.stripe.com/api/customer_portal/configuration#portal_configuration_object-features-subscription_update-products).
final String? price;

/// [Quantity](https://docs.stripe.com/subscriptions/quantities) for this item that the customer should subscribe to through this flow.
final int? quantity;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'price': ?price,
  'quantity': ?quantity,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'price', 'quantity'}.contains(key)); } 
PortalFlowsSubscriptionUpdateConfirmItem copyWith({String? Function()? id, String? Function()? price, int Function()? quantity, }) { return PortalFlowsSubscriptionUpdateConfirmItem(
  id: id != null ? id() : this.id,
  price: price != null ? price() : this.price,
  quantity: quantity != null ? quantity() : this.quantity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsSubscriptionUpdateConfirmItem &&
          id == other.id &&
          price == other.price &&
          quantity == other.quantity; } 
@override int get hashCode { return Object.hash(id, price, quantity); } 
@override String toString() { return 'PortalFlowsSubscriptionUpdateConfirmItem(id: $id, price: $price, quantity: $quantity)'; } 
 }
