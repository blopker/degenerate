// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_request_line_items_discounts.dart';import 'post_quotes_request_line_items_discounts_variant1.dart';import 'post_quotes_request_line_items_price_data.dart';import 'post_quotes_request_line_items_tax_rates.dart';final class PostQuotesRequestLineItems {const PostQuotesRequestLineItems({this.discounts, this.price, this.priceData, this.quantity, this.taxRates, });

factory PostQuotesRequestLineItems.fromJson(Map<String, dynamic> json) { return PostQuotesRequestLineItems(
  discounts: json['discounts'] != null ? OneOf2.parse(json['discounts'], fromA: (v) => (v as List<dynamic>).map((e) => PostQuotesRequestLineItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostQuotesRequestLineItemsDiscountsVariant2.fromJson(v as String),) : null,
  price: json['price'] as String?,
  priceData: json['price_data'] != null ? PostQuotesRequestLineItemsPriceData.fromJson(json['price_data'] as Map<String, dynamic>) : null,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  taxRates: json['tax_rates'] != null ? OneOf2.parse(json['tax_rates'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostQuotesRequestLineItemsTaxRatesVariant2.fromJson(v as String),) : null,
); }

final PostQuotesRequestLineItemsDiscounts? discounts;

final String? price;

final PostQuotesRequestLineItemsPriceData? priceData;

final int? quantity;

final PostQuotesRequestLineItemsTaxRates? taxRates;

Map<String, dynamic> toJson() { return {
  if (discounts != null) 'discounts': discounts?.toJson(),
  'price': ?price,
  if (priceData != null) 'price_data': priceData?.toJson(),
  'quantity': ?quantity,
  if (taxRates != null) 'tax_rates': taxRates?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'discounts', 'price', 'price_data', 'quantity', 'tax_rates'}.contains(key)); } 
PostQuotesRequestLineItems copyWith({PostQuotesRequestLineItemsDiscounts Function()? discounts, String Function()? price, PostQuotesRequestLineItemsPriceData Function()? priceData, int Function()? quantity, PostQuotesRequestLineItemsTaxRates Function()? taxRates, }) { return PostQuotesRequestLineItems(
  discounts: discounts != null ? discounts() : this.discounts,
  price: price != null ? price() : this.price,
  priceData: priceData != null ? priceData() : this.priceData,
  quantity: quantity != null ? quantity() : this.quantity,
  taxRates: taxRates != null ? taxRates() : this.taxRates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostQuotesRequestLineItems &&
          discounts == other.discounts &&
          price == other.price &&
          priceData == other.priceData &&
          quantity == other.quantity &&
          taxRates == other.taxRates; } 
@override int get hashCode { return Object.hash(discounts, price, priceData, quantity, taxRates); } 
@override String toString() { return 'PostQuotesRequestLineItems(discounts: $discounts, price: $price, priceData: $priceData, quantity: $quantity, taxRates: $taxRates)'; } 
 }
