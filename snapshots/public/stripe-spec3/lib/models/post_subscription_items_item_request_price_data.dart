// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_subscription_items_item_request_price_data_recurring.dart';final class PostSubscriptionItemsItemRequestPriceDataTaxBehavior {const PostSubscriptionItemsItemRequestPriceDataTaxBehavior._(this.value);

factory PostSubscriptionItemsItemRequestPriceDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostSubscriptionItemsItemRequestPriceDataTaxBehavior._(json),
}; }

static const PostSubscriptionItemsItemRequestPriceDataTaxBehavior exclusive = PostSubscriptionItemsItemRequestPriceDataTaxBehavior._('exclusive');

static const PostSubscriptionItemsItemRequestPriceDataTaxBehavior inclusive = PostSubscriptionItemsItemRequestPriceDataTaxBehavior._('inclusive');

static const PostSubscriptionItemsItemRequestPriceDataTaxBehavior unspecified = PostSubscriptionItemsItemRequestPriceDataTaxBehavior._('unspecified');

static const List<PostSubscriptionItemsItemRequestPriceDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsItemRequestPriceDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsItemRequestPriceDataTaxBehavior($value)'; } 
 }
/// Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
final class PostSubscriptionItemsItemRequestPriceData {const PostSubscriptionItemsItemRequestPriceData({required this.currency, required this.product, required this.recurring, this.taxBehavior, this.unitAmount, this.unitAmountDecimal, });

factory PostSubscriptionItemsItemRequestPriceData.fromJson(Map<String, dynamic> json) { return PostSubscriptionItemsItemRequestPriceData(
  currency: json['currency'] as String,
  product: json['product'] as String,
  recurring: PostSubscriptionItemsItemRequestPriceDataRecurring.fromJson(json['recurring'] as Map<String, dynamic>),
  taxBehavior: json['tax_behavior'] != null ? PostSubscriptionItemsItemRequestPriceDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final String currency;

final String product;

final PostSubscriptionItemsItemRequestPriceDataRecurring recurring;

final PostSubscriptionItemsItemRequestPriceDataTaxBehavior? taxBehavior;

final int? unitAmount;

final String? unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  'currency': currency,
  'product': product,
  'recurring': recurring.toJson(),
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  'unit_amount': ?unitAmount,
  'unit_amount_decimal': ?unitAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('product') && json['product'] is String &&
      json.containsKey('recurring'); } 
PostSubscriptionItemsItemRequestPriceData copyWith({String? currency, String? product, PostSubscriptionItemsItemRequestPriceDataRecurring? recurring, PostSubscriptionItemsItemRequestPriceDataTaxBehavior Function()? taxBehavior, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostSubscriptionItemsItemRequestPriceData(
  currency: currency ?? this.currency,
  product: product ?? this.product,
  recurring: recurring ?? this.recurring,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionItemsItemRequestPriceData &&
          currency == other.currency &&
          product == other.product &&
          recurring == other.recurring &&
          taxBehavior == other.taxBehavior &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(currency, product, recurring, taxBehavior, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostSubscriptionItemsItemRequestPriceData(currency: $currency, product: $product, recurring: $recurring, taxBehavior: $taxBehavior, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
