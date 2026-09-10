// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationFleetNonFuelPriceData {const IssuingAuthorizationFleetNonFuelPriceData({this.grossAmountDecimal = const Omittable.absent()});

factory IssuingAuthorizationFleetNonFuelPriceData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetNonFuelPriceData(
  grossAmountDecimal: json.containsKey('gross_amount_decimal') ? Omittable(json['gross_amount_decimal'] as String?) : const Omittable.absent(),
); }

/// Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
final Omittable<String?> grossAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (grossAmountDecimal.isPresent) 'gross_amount_decimal': grossAmountDecimal.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gross_amount_decimal'}.contains(key)); } 
IssuingAuthorizationFleetNonFuelPriceData copyWith({Omittable<String?>? grossAmountDecimal}) { return IssuingAuthorizationFleetNonFuelPriceData(
  grossAmountDecimal: grossAmountDecimal ?? this.grossAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetNonFuelPriceData &&
          grossAmountDecimal == other.grossAmountDecimal; } 
@override int get hashCode { return grossAmountDecimal.hashCode; } 
@override String toString() { return 'IssuingAuthorizationFleetNonFuelPriceData(grossAmountDecimal: $grossAmountDecimal)'; } 
 }
