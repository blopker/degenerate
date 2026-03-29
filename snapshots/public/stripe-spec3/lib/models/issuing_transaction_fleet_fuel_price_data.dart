// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingTransactionFleetFuelPriceData {const IssuingTransactionFleetFuelPriceData({this.grossAmountDecimal});

factory IssuingTransactionFleetFuelPriceData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetFuelPriceData(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

/// Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IssuingTransactionFleetFuelPriceData copyWith({String? Function()? grossAmountDecimal}) { return IssuingTransactionFleetFuelPriceData(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFleetFuelPriceData &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'IssuingTransactionFleetFuelPriceData(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
