// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_prices_request_currency_options_value_custom_unit_amount.dart';import 'post_prices_request_currency_options_value_tiers.dart';@immutable final class PostPricesRequestCurrencyOptionsValueTaxBehavior {const PostPricesRequestCurrencyOptionsValueTaxBehavior._(this.value);

factory PostPricesRequestCurrencyOptionsValueTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostPricesRequestCurrencyOptionsValueTaxBehavior._(json),
}; }

static const PostPricesRequestCurrencyOptionsValueTaxBehavior exclusive = PostPricesRequestCurrencyOptionsValueTaxBehavior._('exclusive');

static const PostPricesRequestCurrencyOptionsValueTaxBehavior inclusive = PostPricesRequestCurrencyOptionsValueTaxBehavior._('inclusive');

static const PostPricesRequestCurrencyOptionsValueTaxBehavior unspecified = PostPricesRequestCurrencyOptionsValueTaxBehavior._('unspecified');

static const List<PostPricesRequestCurrencyOptionsValueTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPricesRequestCurrencyOptionsValueTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPricesRequestCurrencyOptionsValueTaxBehavior($value)'; } 
 }
@immutable final class PostPricesRequestCurrencyOptionsValue {const PostPricesRequestCurrencyOptionsValue({this.customUnitAmount, this.taxBehavior, this.tiers, this.unitAmount, this.unitAmountDecimal, });

factory PostPricesRequestCurrencyOptionsValue.fromJson(Map<String, dynamic> json) { return PostPricesRequestCurrencyOptionsValue(
  customUnitAmount: json['custom_unit_amount'] != null ? PostPricesRequestCurrencyOptionsValueCustomUnitAmount.fromJson(json['custom_unit_amount'] as Map<String, dynamic>) : null,
  taxBehavior: json['tax_behavior'] != null ? PostPricesRequestCurrencyOptionsValueTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  tiers: (json['tiers'] as List<dynamic>?)?.map((e) => PostPricesRequestCurrencyOptionsValueTiers.fromJson(e as Map<String, dynamic>)).toList(),
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
); }

final PostPricesRequestCurrencyOptionsValueCustomUnitAmount? customUnitAmount;

final PostPricesRequestCurrencyOptionsValueTaxBehavior? taxBehavior;

final List<PostPricesRequestCurrencyOptionsValueTiers>? tiers;

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
PostPricesRequestCurrencyOptionsValue copyWith({PostPricesRequestCurrencyOptionsValueCustomUnitAmount Function()? customUnitAmount, PostPricesRequestCurrencyOptionsValueTaxBehavior Function()? taxBehavior, List<PostPricesRequestCurrencyOptionsValueTiers> Function()? tiers, int Function()? unitAmount, String Function()? unitAmountDecimal, }) { return PostPricesRequestCurrencyOptionsValue(
  customUnitAmount: customUnitAmount != null ? customUnitAmount() : this.customUnitAmount,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  tiers: tiers != null ? tiers() : this.tiers,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPricesRequestCurrencyOptionsValue &&
          customUnitAmount == other.customUnitAmount &&
          taxBehavior == other.taxBehavior &&
          listEquals(tiers, other.tiers) &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(customUnitAmount, taxBehavior, Object.hashAll(tiers ?? const []), unitAmount, unitAmountDecimal); } 
@override String toString() { return 'PostPricesRequestCurrencyOptionsValue(customUnitAmount: $customUnitAmount, taxBehavior: $taxBehavior, tiers: $tiers, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
