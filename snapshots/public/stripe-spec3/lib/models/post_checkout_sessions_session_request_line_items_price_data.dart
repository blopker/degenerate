// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_session_request_line_items_price_data_product_data.dart';import 'post_checkout_sessions_session_request_line_items_price_data_recurring.dart';final class PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior {const PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior._(this.value);

factory PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior._(json),
}; }

static const PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior exclusive = PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior._('exclusive');

static const PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior inclusive = PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior._('inclusive');

static const PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior unspecified = PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior._('unspecified');

static const List<PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior($value)'; } 
 }
final class PostCheckoutSessionsSessionRequestLineItemsPriceData {const PostCheckoutSessionsSessionRequestLineItemsPriceData({required this.currency, this.product, this.productData, this.recurring, this.taxBehavior, this.unitAmount, this.unitAmountDecimal, });

factory PostCheckoutSessionsSessionRequestLineItemsPriceData.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsSessionRequestLineItemsPriceData(
  currency: json['currency'] as String,
  product: json['product'] as String?,
  productData: json['product_data'] != null ? PostCheckoutSessionsSessionRequestLineItemsPriceDataProductData.fromJson(json['product_data'] as Map<String, dynamic>) : null,
  recurring: json['recurring'] != null ? PostCheckoutSessionsSessionRequestLineItemsPriceDataRecurring.fromJson(json['recurring'] as Map<String, dynamic>) : null,
  taxBehavior: json['tax_behavior'] != null ? PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final String currency;

final String? product;

final PostCheckoutSessionsSessionRequestLineItemsPriceDataProductData? productData;

final PostCheckoutSessionsSessionRequestLineItemsPriceDataRecurring? recurring;

final PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior? taxBehavior;

final int? unitAmount;

final String? unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  'currency': currency,
  'product': ?product,
  if (productData != null) 'product_data': productData?.toJson(),
  if (recurring != null) 'recurring': recurring?.toJson(),
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  'unit_amount': ?unitAmount,
  'unit_amount_decimal': ?unitAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('currency') && json['currency'] is String; } 
PostCheckoutSessionsSessionRequestLineItemsPriceData copyWith({String? currency, String Function()? product, PostCheckoutSessionsSessionRequestLineItemsPriceDataProductData Function()? productData, PostCheckoutSessionsSessionRequestLineItemsPriceDataRecurring Function()? recurring, PostCheckoutSessionsSessionRequestLineItemsPriceDataTaxBehavior Function()? taxBehavior, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostCheckoutSessionsSessionRequestLineItemsPriceData(
  currency: currency ?? this.currency,
  product: product != null ? product() : this.product,
  productData: productData != null ? productData() : this.productData,
  recurring: recurring != null ? recurring() : this.recurring,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestLineItemsPriceData &&
          currency == other.currency &&
          product == other.product &&
          productData == other.productData &&
          recurring == other.recurring &&
          taxBehavior == other.taxBehavior &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(currency, product, productData, recurring, taxBehavior, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestLineItemsPriceData(currency: $currency, product: $product, productData: $productData, recurring: $recurring, taxBehavior: $taxBehavior, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
