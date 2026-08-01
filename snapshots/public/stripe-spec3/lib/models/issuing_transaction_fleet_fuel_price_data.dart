// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionFleetFuelPriceData {const IssuingTransactionFleetFuelPriceData({this.grossAmountDecimal = const Omittable.absent()});

factory IssuingTransactionFleetFuelPriceData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetFuelPriceData(
  grossAmountDecimal: json.containsKey('gross_amount_decimal') ? Omittable(json['gross_amount_decimal'] as String?) : const Omittable.absent(),
); }

/// Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
final Omittable<String?> grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (grossAmountDecimal.isPresent) 'gross_amount_decimal': grossAmountDecimal.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
IssuingTransactionFleetFuelPriceData copyWith({Omittable<String?>? grossAmountDecimal}) { return IssuingTransactionFleetFuelPriceData(
  grossAmountDecimal: grossAmountDecimal ?? this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFleetFuelPriceData &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'IssuingTransactionFleetFuelPriceData(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
