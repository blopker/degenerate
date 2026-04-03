// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_authorization_fleet_fuel_price_data.dart';import 'issuing_authorization_fleet_non_fuel_price_data.dart';import 'issuing_authorization_fleet_tax_data.dart';/// 
@immutable final class IssuingAuthorizationFleetReportedBreakdown {const IssuingAuthorizationFleetReportedBreakdown({this.fuel, this.nonFuel, this.tax, });

factory IssuingAuthorizationFleetReportedBreakdown.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetReportedBreakdown(
  fuel: json['fuel'] != null ? IssuingAuthorizationFleetFuelPriceData.fromJson(json['fuel'] as Map<String, dynamic>) : null,
  nonFuel: json['non_fuel'] != null ? IssuingAuthorizationFleetNonFuelPriceData.fromJson(json['non_fuel'] as Map<String, dynamic>) : null,
  tax: json['tax'] != null ? IssuingAuthorizationFleetTaxData.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

/// Breakdown of fuel portion of the purchase.
final IssuingAuthorizationFleetFuelPriceData? fuel;

/// Breakdown of non-fuel portion of the purchase.
final IssuingAuthorizationFleetNonFuelPriceData? nonFuel;

/// Information about tax included in this transaction.
final IssuingAuthorizationFleetTaxData? tax;

Map<String, dynamic> toJson() { return {
  if (fuel != null) 'fuel': fuel?.toJson(),
  if (nonFuel != null) 'non_fuel': nonFuel?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fuel', 'non_fuel', 'tax'}.contains(key)); } 
IssuingAuthorizationFleetReportedBreakdown copyWith({IssuingAuthorizationFleetFuelPriceData? Function()? fuel, IssuingAuthorizationFleetNonFuelPriceData? Function()? nonFuel, IssuingAuthorizationFleetTaxData? Function()? tax, }) { return IssuingAuthorizationFleetReportedBreakdown(
  fuel: fuel != null ? fuel() : this.fuel,
  nonFuel: nonFuel != null ? nonFuel() : this.nonFuel,
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetReportedBreakdown &&
          fuel == other.fuel &&
          nonFuel == other.nonFuel &&
          tax == other.tax; } 
@override int get hashCode { return Object.hash(fuel, nonFuel, tax); } 
@override String toString() { return 'IssuingAuthorizationFleetReportedBreakdown(fuel: $fuel, nonFuel: $nonFuel, tax: $tax)'; } 
 }
