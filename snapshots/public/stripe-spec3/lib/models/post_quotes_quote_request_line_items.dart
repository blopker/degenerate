// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_quote_request_line_items_discounts.dart';import 'post_quotes_quote_request_line_items_discounts_variant1.dart';import 'post_quotes_quote_request_line_items_price_data.dart';import 'post_quotes_quote_request_line_items_tax_rates.dart';final class PostQuotesQuoteRequestLineItems {const PostQuotesQuoteRequestLineItems({this.discounts, this.id, this.price, this.priceData, this.quantity, this.taxRates, });

factory PostQuotesQuoteRequestLineItems.fromJson(Map<String, dynamic> json) { return PostQuotesQuoteRequestLineItems(
  discounts: json['discounts'] != null ? OneOf2.parse(json['discounts'], fromA: (v) => (v as List<dynamic>).map((e) => PostQuotesQuoteRequestLineItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostQuotesQuoteRequestLineItemsDiscountsVariant2.fromJson(v as String),) : null,
  id: json['id'] as String?,
  price: json['price'] as String?,
  priceData: json['price_data'] != null ? PostQuotesQuoteRequestLineItemsPriceData.fromJson(json['price_data'] as Map<String, dynamic>) : null,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  taxRates: json['tax_rates'] != null ? OneOf2.parse(json['tax_rates'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostQuotesQuoteRequestLineItemsTaxRatesVariant2.fromJson(v as String),) : null,
); }

final PostQuotesQuoteRequestLineItemsDiscounts? discounts;

final String? id;

final String? price;

final PostQuotesQuoteRequestLineItemsPriceData? priceData;

final int? quantity;

final PostQuotesQuoteRequestLineItemsTaxRates? taxRates;

Map<String, dynamic> toJson() { return {
  if (discounts != null) 'discounts': discounts?.toJson(),
  'id': ?id,
  'price': ?price,
  if (priceData != null) 'price_data': priceData?.toJson(),
  'quantity': ?quantity,
  if (taxRates != null) 'tax_rates': taxRates?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostQuotesQuoteRequestLineItems copyWith({PostQuotesQuoteRequestLineItemsDiscounts Function()? discounts, String Function()? id, String Function()? price, PostQuotesQuoteRequestLineItemsPriceData Function()? priceData, int Function()? quantity, PostQuotesQuoteRequestLineItemsTaxRates Function()? taxRates, }) { return PostQuotesQuoteRequestLineItems(
  discounts: discounts != null ? discounts() : this.discounts,
  id: id != null ? id() : this.id,
  price: price != null ? price() : this.price,
  priceData: priceData != null ? priceData() : this.priceData,
  quantity: quantity != null ? quantity() : this.quantity,
  taxRates: taxRates != null ? taxRates() : this.taxRates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostQuotesQuoteRequestLineItems &&
          discounts == other.discounts &&
          id == other.id &&
          price == other.price &&
          priceData == other.priceData &&
          quantity == other.quantity &&
          taxRates == other.taxRates; } 
@override int get hashCode { return Object.hash(discounts, id, price, priceData, quantity, taxRates); } 
@override String toString() { return 'PostQuotesQuoteRequestLineItems(discounts: $discounts, id: $id, price: $price, priceData: $priceData, quantity: $quantity, taxRates: $taxRates)'; } 
 }
