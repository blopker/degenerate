// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_fleet_fuel_price_data.dart';import 'issuing_transaction_fleet_non_fuel_price_data.dart';import 'issuing_transaction_fleet_tax_data.dart';/// 
final class IssuingTransactionFleetReportedBreakdown {const IssuingTransactionFleetReportedBreakdown({this.fuel, this.nonFuel, this.tax, });

factory IssuingTransactionFleetReportedBreakdown.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetReportedBreakdown(
  fuel: json['fuel'] != null ? IssuingTransactionFleetFuelPriceData.fromJson(json['fuel'] as Map<String, dynamic>) : null,
  nonFuel: json['non_fuel'] != null ? IssuingTransactionFleetNonFuelPriceData.fromJson(json['non_fuel'] as Map<String, dynamic>) : null,
  tax: json['tax'] != null ? IssuingTransactionFleetTaxData.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

/// Breakdown of fuel portion of the purchase.
final IssuingTransactionFleetFuelPriceData? fuel;

/// Breakdown of non-fuel portion of the purchase.
final IssuingTransactionFleetNonFuelPriceData? nonFuel;

/// Information about tax included in this transaction.
final IssuingTransactionFleetTaxData? tax;

Map<String, dynamic> toJson() { return {
  if (fuel != null) 'fuel': fuel?.toJson(),
  if (nonFuel != null) 'non_fuel': nonFuel?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fuel', 'non_fuel', 'tax'}.contains(key)); } 
IssuingTransactionFleetReportedBreakdown copyWith({IssuingTransactionFleetFuelPriceData? Function()? fuel, IssuingTransactionFleetNonFuelPriceData? Function()? nonFuel, IssuingTransactionFleetTaxData? Function()? tax, }) { return IssuingTransactionFleetReportedBreakdown(
  fuel: fuel != null ? fuel() : this.fuel,
  nonFuel: nonFuel != null ? nonFuel() : this.nonFuel,
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFleetReportedBreakdown &&
          fuel == other.fuel &&
          nonFuel == other.nonFuel &&
          tax == other.tax; } 
@override int get hashCode { return Object.hash(fuel, nonFuel, tax); } 
@override String toString() { return 'IssuingTransactionFleetReportedBreakdown(fuel: $fuel, nonFuel: $nonFuel, tax: $tax)'; } 
 }
