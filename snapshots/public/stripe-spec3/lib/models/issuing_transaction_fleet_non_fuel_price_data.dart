// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionFleetNonFuelPriceData {const IssuingTransactionFleetNonFuelPriceData({this.grossAmountDecimal});

factory IssuingTransactionFleetNonFuelPriceData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetNonFuelPriceData(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

/// Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
IssuingTransactionFleetNonFuelPriceData copyWith({String? Function()? grossAmountDecimal}) { return IssuingTransactionFleetNonFuelPriceData(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFleetNonFuelPriceData &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'IssuingTransactionFleetNonFuelPriceData(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
