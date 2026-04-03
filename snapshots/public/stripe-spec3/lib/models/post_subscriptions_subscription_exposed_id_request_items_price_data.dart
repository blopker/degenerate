// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_subscription_exposed_id_request_items_price_data_recurring.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior {const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior exclusive = PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior._('exclusive');

static const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior inclusive = PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior._('inclusive');

static const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior unspecified = PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior._('unspecified');

static const List<PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior($value)'; } 
 }
@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData {const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData({required this.currency, required this.product, required this.recurring, this.taxBehavior, this.unitAmount, this.unitAmountDecimal, });

factory PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData(
  currency: json['currency'] as String,
  product: json['product'] as String,
  recurring: PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring.fromJson(json['recurring'] as Map<String, dynamic>),
  taxBehavior: json['tax_behavior'] != null ? PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final String currency;

final String product;

final PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring recurring;

final PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior? taxBehavior;

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
PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData copyWith({String? currency, String? product, PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring? recurring, PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataTaxBehavior Function()? taxBehavior, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData(
  currency: currency ?? this.currency,
  product: product ?? this.product,
  recurring: recurring ?? this.recurring,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData &&
          currency == other.currency &&
          product == other.product &&
          recurring == other.recurring &&
          taxBehavior == other.taxBehavior &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(currency, product, recurring, taxBehavior, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItemsPriceData(currency: $currency, product: $product, recurring: $recurring, taxBehavior: $taxBehavior, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
