// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_prices_price_request_currency_options_variant1_value_tiers_up_to.dart';@immutable final class PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers {const PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers({required this.upTo, this.flatAmount, this.flatAmountDecimal, this.unitAmount, this.unitAmountDecimal, });

factory PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers.fromJson(Map<String, dynamic> json) { return PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers(
  flatAmount: json['flat_amount'] != null ? (json['flat_amount'] as num).toInt() : null,
  flatAmountDecimal: json['flat_amount_decimal'] as String?,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
  upTo: OneOf2.parse(json['up_to'], fromA: (v) => PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(),),
); }

final int? flatAmount;

final String? flatAmountDecimal;

final int? unitAmount;

final String? unitAmountDecimal;

final PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo upTo;

Map<String, dynamic> toJson() { return {
  'flat_amount': ?flatAmount,
  'flat_amount_decimal': ?flatAmountDecimal,
  'unit_amount': ?unitAmount,
  'unit_amount_decimal': ?unitAmountDecimal,
  'up_to': upTo.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('up_to'); } 
PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers copyWith({int Function()? flatAmount, String Function()? flatAmountDecimal, int Function()? unitAmount, String Function()? unitAmountDecimal, PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo? upTo, }) { return PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers(
  flatAmount: flatAmount != null ? flatAmount() : this.flatAmount,
  flatAmountDecimal: flatAmountDecimal != null ? flatAmountDecimal() : this.flatAmountDecimal,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
  upTo: upTo ?? this.upTo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers &&
          flatAmount == other.flatAmount &&
          flatAmountDecimal == other.flatAmountDecimal &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal &&
          upTo == other.upTo; } 
@override int get hashCode { return Object.hash(flatAmount, flatAmountDecimal, unitAmount, unitAmountDecimal, upTo); } 
@override String toString() { return 'PostPricesPriceRequestCurrencyOptionsVariant1ValueTiers(flatAmount: $flatAmount, flatAmountDecimal: $flatAmountDecimal, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal, upTo: $upTo)'; } 
 }
