// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_unit_amount.dart';import 'price_tier.dart';/// Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
@immutable final class CurrencyOptionTaxBehavior {const CurrencyOptionTaxBehavior._(this.value);

factory CurrencyOptionTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => CurrencyOptionTaxBehavior._(json),
}; }

static const CurrencyOptionTaxBehavior exclusive = CurrencyOptionTaxBehavior._('exclusive');

static const CurrencyOptionTaxBehavior inclusive = CurrencyOptionTaxBehavior._('inclusive');

static const CurrencyOptionTaxBehavior unspecified = CurrencyOptionTaxBehavior._('unspecified');

static const List<CurrencyOptionTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CurrencyOptionTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CurrencyOptionTaxBehavior($value)'; } 
 }
/// 
@immutable final class CurrencyOption {const CurrencyOption({this.customUnitAmount = const Omittable.absent(), this.taxBehavior = const Omittable.absent(), this.tiers, this.unitAmount = const Omittable.absent(), this.unitAmountDecimal = const Omittable.absent(), });

factory CurrencyOption.fromJson(Map<String, dynamic> json) { return CurrencyOption(
  customUnitAmount: json.containsKey('custom_unit_amount') ? Omittable(json['custom_unit_amount'] != null ? CustomUnitAmount.fromJson(json['custom_unit_amount'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  taxBehavior: json.containsKey('tax_behavior') ? Omittable(json['tax_behavior'] != null ? CurrencyOptionTaxBehavior.fromJson(json['tax_behavior'] as String) : null) : const Omittable.absent(),
  tiers: (json['tiers'] as List<dynamic>?)?.map((e) => PriceTier.fromJson(e as Map<String, dynamic>)).toList(),
  unitAmount: json.containsKey('unit_amount') ? Omittable(json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null) : const Omittable.absent(),
  unitAmountDecimal: json.containsKey('unit_amount_decimal') ? Omittable(json['unit_amount_decimal'] as String?) : const Omittable.absent(),
); }

/// When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
final Omittable<CustomUnitAmount?> customUnitAmount;

/// Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
final Omittable<CurrencyOptionTaxBehavior?> taxBehavior;

/// Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
final List<PriceTier>? tiers;

/// The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
final Omittable<int?> unitAmount;

/// The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
final Omittable<String?> unitAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (customUnitAmount.isPresent) 'custom_unit_amount': customUnitAmount.value?.toJson(),
  if (taxBehavior.isPresent) 'tax_behavior': taxBehavior.value?.toJson(),
  if (tiers != null) 'tiers': tiers?.map((e) => e.toJson()).toList(),
  if (unitAmount.isPresent) 'unit_amount': unitAmount.value,
  if (unitAmountDecimal.isPresent) 'unit_amount_decimal': unitAmountDecimal.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_unit_amount', 'tax_behavior', 'tiers', 'unit_amount', 'unit_amount_decimal'}.contains(key)); } 
CurrencyOption copyWith({Omittable<CustomUnitAmount?>? customUnitAmount, Omittable<CurrencyOptionTaxBehavior?>? taxBehavior, List<PriceTier>? Function()? tiers, Omittable<int?>? unitAmount, Omittable<String?>? unitAmountDecimal, }) { return CurrencyOption(
  customUnitAmount: customUnitAmount ?? this.customUnitAmount,
  taxBehavior: taxBehavior ?? this.taxBehavior,
  tiers: tiers != null ? tiers() : this.tiers,
  unitAmount: unitAmount ?? this.unitAmount,
  unitAmountDecimal: unitAmountDecimal ?? this.unitAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CurrencyOption &&
          customUnitAmount == other.customUnitAmount &&
          taxBehavior == other.taxBehavior &&
          listEquals(tiers, other.tiers) &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal; } 
@override int get hashCode { return Object.hash(customUnitAmount, taxBehavior, Object.hashAll(tiers ?? const []), unitAmount, unitAmountDecimal); } 
@override String toString() { return 'CurrencyOption(customUnitAmount: $customUnitAmount, taxBehavior: $taxBehavior, tiers: $tiers, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)'; } 
 }
