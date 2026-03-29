// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_invoices_invoice_update_lines_request_lines_price_data_product_data.dart';final class PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior {const PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior._(json),
}; }

static const PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior exclusive = PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior._('exclusive');

static const PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior inclusive = PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior._('inclusive');

static const PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior unspecified = PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior._('unspecified');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior($value)'; } 
 }
final class PostInvoicesInvoiceUpdateLinesRequestLinesPriceData {const PostInvoicesInvoiceUpdateLinesRequestLinesPriceData({required this.currency, this.product, this.productData, this.taxBehavior, this.unitAmount, this.unitAmountDecimal, });

factory PostInvoicesInvoiceUpdateLinesRequestLinesPriceData.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceUpdateLinesRequestLinesPriceData(
  currency: json['currency'] as String,
  product: json['product'] as String?,
  productData: json['product_data'] != null ? PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataProductData.fromJson(json['product_data'] as Map<String, dynamic>) : null,
  taxBehavior: json['tax_behavior'] != null ? PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final String currency;

final String? product;

final PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataProductData? productData;

final PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior? taxBehavior;

final int? unitAmount;

final String? unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  'currency': currency,
  'product': ?product,
  if (productData != null) 'product_data': productData?.toJson(),
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  'unit_amount': ?unitAmount,
  'unit_amount_decimal': ?unitAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('currency') && json['currency'] is String; } 
PostInvoicesInvoiceUpdateLinesRequestLinesPriceData copyWith({String? currency, String Function()? product, PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataProductData Function()? productData, PostInvoicesInvoiceUpdateLinesRequestLinesPriceDataTaxBehavior Function()? taxBehavior, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostInvoicesInvoiceUpdateLinesRequestLinesPriceData(
  currency: currency ?? this.currency,
  product: product != null ? product() : this.product,
  productData: productData != null ? productData() : this.productData,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesPriceData &&
          currency == other.currency &&
          product == other.product &&
          productData == other.productData &&
          taxBehavior == other.taxBehavior &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(currency, product, productData, taxBehavior, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesPriceData(currency: $currency, product: $product, productData: $productData, taxBehavior: $taxBehavior, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
