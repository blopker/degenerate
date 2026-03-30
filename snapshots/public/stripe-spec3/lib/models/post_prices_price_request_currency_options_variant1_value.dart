// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_prices_price_request_currency_options_variant1_value_custom_unit_amount.dart';import 'post_prices_price_request_currency_options_variant1_value_tiers.dart';final class PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior {const PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior._(this.value);

factory PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior._(json),
}; }

static const PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior exclusive = PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior._('exclusive');

static const PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior inclusive = PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior._('inclusive');

static const PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior unspecified = PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior._('unspecified');

static const List<PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior($value)'; } 
 }
final class PostPricesPriceRequestCurrencyOptionsVariant1Value {const PostPricesPriceRequestCurrencyOptionsVariant1Value({this.customUnitAmount, this.taxBehavior, this.tiers, this.unitAmount, this.unitAmountDecimal, });

factory PostPricesPriceRequestCurrencyOptionsVariant1Value.fromJson(Map<String, dynamic> json) { return PostPricesPriceRequestCurrencyOptionsVariant1Value(
  customUnitAmount: json['custom_unit_amount'] != null ? PostPricesPriceRequestCurrencyOptionsVariant1ValueCustomUnitAmount.fromJson(json['custom_unit_amount'] as Map<String, dynamic>) : null,
  taxBehavior: json['tax_behavior'] != null ? PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  tiers: (json['tiers'] as List<dynamic>?)?.map((e) => PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers.fromJson(e as Map<String, dynamic>)).toList(),
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final PostPricesPriceRequestCurrencyOptionsVariant1ValueCustomUnitAmount? customUnitAmount;

final PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior? taxBehavior;

final List<PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers>? tiers;

final int? unitAmount;

final String? unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (customUnitAmount != null) 'custom_unit_amount': customUnitAmount?.toJson(),
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  if (tiers != null) 'tiers': tiers?.map((e) => e.toJson()).toList(),
  'unit_amount': ?unitAmount,
  'unit_amount_decimal': ?unitAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_unit_amount', 'tax_behavior', 'tiers', 'unit_amount', 'unit_amount_decimal'}.contains(key)); } 
PostPricesPriceRequestCurrencyOptionsVariant1Value copyWith({PostPricesPriceRequestCurrencyOptionsVariant1ValueCustomUnitAmount Function()? customUnitAmount, PostPricesPriceRequestCurrencyOptionsVariant1ValueTaxBehavior Function()? taxBehavior, List<PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers> Function()? tiers, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostPricesPriceRequestCurrencyOptionsVariant1Value(
  customUnitAmount: customUnitAmount != null ? customUnitAmount() : this.customUnitAmount,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  tiers: tiers != null ? tiers() : this.tiers,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPricesPriceRequestCurrencyOptionsVariant1Value &&
          customUnitAmount == other.customUnitAmount &&
          taxBehavior == other.taxBehavior &&
          listEquals(tiers, other.tiers) &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(customUnitAmount, taxBehavior, Object.hashAll(tiers ?? const []), unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostPricesPriceRequestCurrencyOptionsVariant1Value(customUnitAmount: $customUnitAmount, taxBehavior: $taxBehavior, tiers: $tiers, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
