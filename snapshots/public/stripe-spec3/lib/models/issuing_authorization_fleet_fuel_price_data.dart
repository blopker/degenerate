// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationFleetFuelPriceData {const IssuingAuthorizationFleetFuelPriceData({this.grossAmountDecimal = const Omittable.absent()});

factory IssuingAuthorizationFleetFuelPriceData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetFuelPriceData(
  grossAmountDecimal: json.containsKey('gross_amount_decimal') ? Omittable(json['gross_amount_decimal'] as String?) : const Omittable.absent(),
); }

/// Gross fuel amount that should equal Fuel Quantity multiplied by Fuel Unit Cost, inclusive of taxes.
final Omittable<String?> grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (grossAmountDecimal.isPresent) 'gross_amount_decimal': grossAmountDecimal.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
IssuingAuthorizationFleetFuelPriceData copyWith({Omittable<String?>? grossAmountDecimal}) { return IssuingAuthorizationFleetFuelPriceData(
  grossAmountDecimal: grossAmountDecimal ?? this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetFuelPriceData &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'IssuingAuthorizationFleetFuelPriceData(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
