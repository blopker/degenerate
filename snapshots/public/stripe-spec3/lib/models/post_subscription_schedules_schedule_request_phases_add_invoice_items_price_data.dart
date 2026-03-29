// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior {const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior exclusive = PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior._('exclusive');

static const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior inclusive = PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior._('inclusive');

static const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior unspecified = PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior._('unspecified');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior($value)'; } 
 }
final class PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData {const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData({required this.currency, required this.product, this.taxBehavior, this.unitAmount, this.unitAmountDecimal, });

factory PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData(
  currency: json['currency'] as String,
  product: json['product'] as String,
  taxBehavior: json['tax_behavior'] != null ? PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final String currency;

final String product;

final PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior? taxBehavior;

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
PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData copyWith({String? currency, String? product, PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceDataTaxBehavior Function()? taxBehavior, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData(
  currency: currency ?? this.currency,
  product: product ?? this.product,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData &&
          currency == other.currency &&
          product == other.product &&
          taxBehavior == other.taxBehavior &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(currency, product, taxBehavior, unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData(currency: $currency, product: $product, taxBehavior: $taxBehavior, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
