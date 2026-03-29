// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior {const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._(this.value);

factory PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior exclusive = PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._('exclusive');

static const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior inclusive = PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._('inclusive');

static const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior unspecified = PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior._('unspecified');

static const List<PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior($value)'; } 
 }
final class PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData {const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData({required this.currency, required this.product, this.taxBehavior, this.unitAmount, this.unitAmountDecimal, });

factory PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData(
  currency: json['currency'] as String,
  product: json['product'] as String,
  taxBehavior: json['tax_behavior'] != null ? PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final String currency;

final String product;

final PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior? taxBehavior;

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
PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData copyWith({String? currency, String? product, PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceDataTaxBehavior Function()? taxBehavior, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData(
  currency: currency ?? this.currency,
  product: product ?? this.product,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData &&
          currency == other.currency &&
          product == other.product &&
          taxBehavior == other.taxBehavior &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(currency, product, taxBehavior, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsPriceData(currency: $currency, product: $product, taxBehavior: $taxBehavior, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
