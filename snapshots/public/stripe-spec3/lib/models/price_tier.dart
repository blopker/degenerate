// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PriceTier {const PriceTier({this.flatAmount, this.flatAmountDecimal, this.unitAmount, this.unitAmountDecimal, this.upTo, });

factory PriceTier.fromJson(Map<String, dynamic> json) { return PriceTier(
  flatAmount: json['flat_amount'] != null ? (json['flat_amount'] as num).toInt() : null,
  flatAmountDecimal: json['flat_amount_decimal'] as String?,
  unitAmount: json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
  upTo: json['up_to'] != null ? (json['up_to'] as num).toInt() : null,
); }

/// Price for the entire tier.
final int? flatAmount;

/// Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
final String? flatAmountDecimal;

/// Per unit price for units relevant to the tier.
final int? unitAmount;

/// Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
final String? unitAmountDecimal;

/// Up to and including to this quantity will be contained in the tier.
final int? upTo;

Map<String, dynamic> toJson() { return {
  'flat_amount': ?flatAmount,
  'flat_amount_decimal': ?flatAmountDecimal,
  'unit_amount': ?unitAmount,
  'unit_amount_decimal': ?unitAmountDecimal,
  'up_to': ?upTo,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'flat_amount', 'flat_amount_decimal', 'unit_amount', 'unit_amount_decimal', 'up_to'}.contains(key)); } 
PriceTier copyWith({int? Function()? flatAmount, String? Function()? flatAmountDecimal, int? Function()? unitAmount, String? Function()? unitAmountDecimal, int? Function()? upTo, }) { return PriceTier(
  flatAmount: flatAmount != null ? flatAmount() : this.flatAmount,
  flatAmountDecimal: flatAmountDecimal != null ? flatAmountDecimal() : this.flatAmountDecimal,
  unitAmount: unitAmount != null ? unitAmount() : this.unitAmount,
  unitAmountDecimal: unitAmountDecimal != null ? unitAmountDecimal() : this.unitAmountDecimal,
  upTo: upTo != null ? upTo() : this.upTo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PriceTier &&
          flatAmount == other.flatAmount &&
          flatAmountDecimal == other.flatAmountDecimal &&
          unitAmount == other.unitAmount &&
          unitAmountDecimal == other.unitAmountDecimal &&
          upTo == other.upTo; } 
@override int get hashCode { return Object.hash(flatAmount, flatAmountDecimal, unitAmount, unitAmountDecimal, upTo); } 
@override String toString() { return 'PriceTier(flatAmount: $flatAmount, flatAmountDecimal: $flatAmountDecimal, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal, upTo: $upTo)'; } 
 }
