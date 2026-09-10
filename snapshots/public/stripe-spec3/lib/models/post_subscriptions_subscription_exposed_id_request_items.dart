// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_subscription_exposed_id_request_items_billing_thresholds.dart';import 'post_subscriptions_subscription_exposed_id_request_items_discounts.dart';import 'post_subscriptions_subscription_exposed_id_request_items_metadata.dart';import 'post_subscriptions_subscription_exposed_id_request_items_price_data.dart';import 'post_subscriptions_subscription_exposed_id_request_items_tax_rates.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItems {const PostSubscriptionsSubscriptionExposedIdRequestItems({this.billingThresholds, this.clearUsage, this.deleted, this.discounts, this.id, this.metadata, this.price, this.priceData, this.quantity, this.taxRates, });

factory PostSubscriptionsSubscriptionExposedIdRequestItems.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestItems(
  billingThresholds: json['billing_thresholds'] != null ? PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds.fromJson(json['billing_thresholds']) : null,
  clearUsage: json['clear_usage'] as bool?,
  deleted: json['deleted'] as bool?,
  discounts: json['discounts'] != null ? PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts.fromJson(json['discounts']) : null,
  id: json['id'] as String?,
  metadata: json['metadata'] != null ? PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata.fromJson(json['metadata']) : null,
  price: json['price'] as String?,
  priceData: json['price_data'] != null ? PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData.fromJson(json['price_data'] as Map<String, dynamic>) : null,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  taxRates: json['tax_rates'] != null ? PostSubscriptionsSubscriptionExposedIdRequestItemsTaxRates.fromJson(json['tax_rates']) : null,
); }

final PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds? billingThresholds;

final bool? clearUsage;

final bool? deleted;

final PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts? discounts;

final String? id;

final PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata? metadata;

final String? price;

final PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData? priceData;

final int? quantity;

final PostSubscriptionsSubscriptionExposedIdRequestItemsTaxRates? taxRates;

Map<String, dynamic> toJson() { return {
  if (billingThresholds != null) 'billing_thresholds': billingThresholds?.toJson(),
  'clear_usage': ?clearUsage,
  'deleted': ?deleted,
  if (discounts != null) 'discounts': discounts?.toJson(),
  'id': ?id,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'price': ?price,
  if (priceData != null) 'price_data': priceData?.toJson(),
  'quantity': ?quantity,
  if (taxRates != null) 'tax_rates': taxRates?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_thresholds', 'clear_usage', 'deleted', 'discounts', 'id', 'metadata', 'price', 'price_data', 'quantity', 'tax_rates'}.contains(key)); } 
PostSubscriptionsSubscriptionExposedIdRequestItems copyWith({PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds? Function()? billingThresholds, bool? Function()? clearUsage, bool? Function()? deleted, PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts? Function()? discounts, String? Function()? id, PostSubscriptionsSubscriptionExposedIdRequestItemsMetadata? Function()? metadata, String? Function()? price, PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData? Function()? priceData, int? Function()? quantity, PostSubscriptionsSubscriptionExposedIdRequestItemsTaxRates? Function()? taxRates, }) { return PostSubscriptionsSubscriptionExposedIdRequestItems(
  billingThresholds: billingThresholds != null ? billingThresholds() : this.billingThresholds,
  clearUsage: clearUsage != null ? clearUsage() : this.clearUsage,
  deleted: deleted != null ? deleted() : this.deleted,
  discounts: discounts != null ? discounts() : this.discounts,
  id: id != null ? id() : this.id,
  metadata: metadata != null ? metadata() : this.metadata,
  price: price != null ? price() : this.price,
  priceData: priceData != null ? priceData() : this.priceData,
  quantity: quantity != null ? quantity() : this.quantity,
  taxRates: taxRates != null ? taxRates() : this.taxRates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestItems &&
          billingThresholds == other.billingThresholds &&
          clearUsage == other.clearUsage &&
          deleted == other.deleted &&
          discounts == other.discounts &&
          id == other.id &&
          metadata == other.metadata &&
          price == other.price &&
          priceData == other.priceData &&
          quantity == other.quantity &&
          taxRates == other.taxRates; } 
@override int get hashCode { return Object.hash(billingThresholds, clearUsage, deleted, discounts, id, metadata, price, priceData, quantity, taxRates); } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItems(billingThresholds: $billingThresholds, clearUsage: $clearUsage, deleted: $deleted, discounts: $discounts, id: $id, metadata: $metadata, price: $price, priceData: $priceData, quantity: $quantity, taxRates: $taxRates)'; } 
 }
