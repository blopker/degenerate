// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior {const PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._(this.value);

factory PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._(json),
}; }

static const PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior exclusive = PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._('exclusive');

static const PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior inclusive = PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._('inclusive');

static const PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior unspecified = PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._('unspecified');

static const List<PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior($value)'; } 
 }
@immutable final class PostSubscriptionsRequestAddInvoiceItemsPriceData {const PostSubscriptionsRequestAddInvoiceItemsPriceData({required this.currency, required this.product, this.taxBehavior, this.unitAmount, this.unitAmountDecimal, });

factory PostSubscriptionsRequestAddInvoiceItemsPriceData.fromJson(Map<String, dynamic> json) { return PostSubscriptionsRequestAddInvoiceItemsPriceData(
  currency: json['currency'] as String,
  product: json['product'] as String,
  taxBehavior: json['tax_behavior'] != null ? PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final String currency;

final String product;

final PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior? taxBehavior;

final int? unitAmount;

final String? unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  'currency': currency,
  'product': product,
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  'unit_amount': ?unitAmount,
  'unit_amount_decimal': ?unitAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('product') && json['product'] is String; } 
PostSubscriptionsRequestAddInvoiceItemsPriceData copyWith({String? currency, String? product, PostSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior Function()? taxBehavior, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostSubscriptionsRequestAddInvoiceItemsPriceData(
  currency: currency ?? this.currency,
  product: product ?? this.product,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsRequestAddInvoiceItemsPriceData &&
          currency == other.currency &&
          product == other.product &&
          taxBehavior == other.taxBehavior &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(currency, product, taxBehavior, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostSubscriptionsRequestAddInvoiceItemsPriceData(currency: $currency, product: $product, taxBehavior: $taxBehavior, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
