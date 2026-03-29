// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingAuthorizationFleetNonFuelPriceData {const IssuingAuthorizationFleetNonFuelPriceData({this.grossAmountDecimal});

factory IssuingAuthorizationFleetNonFuelPriceData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetNonFuelPriceData(
  grossAmountDecimal: json['gross_amount_decimal'] as String?,
); }

/// Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
final String? grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  'gross_amount_decimal': ?grossAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IssuingAuthorizationFleetNonFuelPriceData copyWith({String? Function()? grossAmountDecimal}) { return IssuingAuthorizationFleetNonFuelPriceData(
  grossAmountDecimal: grossAmountDecimal != null ? grossAmountDecimal() : this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetNonFuelPriceData &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'IssuingAuthorizationFleetNonFuelPriceData(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
