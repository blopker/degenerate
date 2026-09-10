// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PriceTier {const PriceTier({this.flatAmount = const Omittable.absent(), this.flatAmountDecimal = const Omittable.absent(), this.unitAmount = const Omittable.absent(), this.unitAmountDecimal = const Omittable.absent(), this.upTo = const Omittable.absent(), });

factory PriceTier.fromJson(Map<String, dynamic> json) { return PriceTier(
  flatAmount: json.containsKey('flat_amount') ? Omittable(json['flat_amount'] != null ? (json['flat_amount'] as num).toInt() : null) : const Omittable.absent(),
  flatAmountDecimal: json.containsKey('flat_amount_decimal') ? Omittable(json['flat_amount_decimal'] as String?) : const Omittable.absent(),
  unitAmount: json.containsKey('unit_amount') ? Omittable(json['unit_amount'] != null ? (json['unit_amount'] as num).toInt() : null) : const Omittable.absent(),
  unitAmountDecimal: json.containsKey('unit_amount_decimal') ? Omittable(json['unit_amount_decimal'] as String?) : const Omittable.absent(),
  upTo: json.containsKey('up_to') ? Omittable(json['up_to'] != null ? (json['up_to'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Price for the entire tier.
final Omittable<int?> flatAmount;

/// Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
final Omittable<String?> flatAmountDecimal;

/// Per unit price for units relevant to the tier.
final Omittable<int?> unitAmount;

/// Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
final Omittable<String?> unitAmountDecimal;

/// Up to and including to this quantity will be contained in the tier.
final Omittable<int?> upTo;

Map<String, dynamic> toJson() { return {
  if (flatAmount.isPresent) 'flat_amount': flatAmount.value,
  if (flatAmountDecimal.isPresent) 'flat_amount_decimal': flatAmountDecimal.value,
  if (unitAmount.isPresent) 'unit_amount': unitAmount.value,
  if (unitAmountDecimal.isPresent) 'unit_amount_decimal': unitAmountDecimal.value,
  if (upTo.isPresent) 'up_to': upTo.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'flat_amount', 'flat_amount_decimal', 'unit_amount', 'unit_amount_decimal', 'up_to'}.contains(key)); } 
PriceTier copyWith({Omittable<int?>? flatAmount, Omittable<String?>? flatAmountDecimal, Omittable<int?>? unitAmount, Omittable<String?>? unitAmountDecimal, Omittable<int?>? upTo, }) { return PriceTier(
  flatAmount: flatAmount ?? this.flatAmount,
  flatAmountDecimal: flatAmountDecimal ?? this.flatAmountDecimal,
  unitAmount: unitAmount ?? this.unitAmount,
  unitAmountDecimal: unitAmountDecimal ?? this.unitAmountDecimal,
  upTo: upTo ?? this.upTo,
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
