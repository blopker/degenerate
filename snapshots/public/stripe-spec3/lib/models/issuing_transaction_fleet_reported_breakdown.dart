// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction_fleet_fuel_price_data.dart';import 'issuing_transaction_fleet_non_fuel_price_data.dart';import 'issuing_transaction_fleet_tax_data.dart';/// 
@immutable final class IssuingTransactionFleetReportedBreakdown {const IssuingTransactionFleetReportedBreakdown({this.fuel = const Omittable.absent(), this.nonFuel = const Omittable.absent(), this.tax = const Omittable.absent(), });

factory IssuingTransactionFleetReportedBreakdown.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetReportedBreakdown(
  fuel: json.containsKey('fuel') ? Omittable(json['fuel'] != null ? IssuingTransactionFleetFuelPriceData.fromJson(json['fuel'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  nonFuel: json.containsKey('non_fuel') ? Omittable(json['non_fuel'] != null ? IssuingTransactionFleetNonFuelPriceData.fromJson(json['non_fuel'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  tax: json.containsKey('tax') ? Omittable(json['tax'] != null ? IssuingTransactionFleetTaxData.fromJson(json['tax'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Breakdown of fuel portion of the purchase.
final Omittable<IssuingTransactionFleetFuelPriceData?> fuel;

/// Breakdown of non-fuel portion of the purchase.
final Omittable<IssuingTransactionFleetNonFuelPriceData?> nonFuel;

/// Information about tax included in this transaction.
final Omittable<IssuingTransactionFleetTaxData?> tax;

Map<String, dynamic> toJson() { return {
  if (fuel.isPresent) 'fuel': fuel.value?.toJson(),
  if (nonFuel.isPresent) 'non_fuel': nonFuel.value?.toJson(),
  if (tax.isPresent) 'tax': tax.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fuel', 'non_fuel', 'tax'}.contains(key)); } 
IssuingTransactionFleetReportedBreakdown copyWith({Omittable<IssuingTransactionFleetFuelPriceData?>? fuel, Omittable<IssuingTransactionFleetNonFuelPriceData?>? nonFuel, Omittable<IssuingTransactionFleetTaxData?>? tax, }) { return IssuingTransactionFleetReportedBreakdown(
  fuel: fuel ?? this.fuel,
  nonFuel: nonFuel ?? this.nonFuel,
  tax: tax ?? this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFleetReportedBreakdown &&
          fuel == other.fuel &&
          nonFuel == other.nonFuel &&
          tax == other.tax; } 
@override int get hashCode { return Object.hash(fuel, nonFuel, tax); } 
@override String toString() { return 'IssuingTransactionFleetReportedBreakdown(fuel: $fuel, nonFuel: $nonFuel, tax: $tax)'; } 
 }
