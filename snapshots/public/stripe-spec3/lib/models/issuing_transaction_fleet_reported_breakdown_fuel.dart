// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_fleet_fuel_price_data.dart';/// Breakdown of fuel portion of the purchase.
final class IssuingTransactionFleetReportedBreakdownFuel {const IssuingTransactionFleetReportedBreakdownFuel({this.issuingTransactionFleetFuelPriceData});

factory IssuingTransactionFleetReportedBreakdownFuel.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetReportedBreakdownFuel(
  issuingTransactionFleetFuelPriceData: IssuingTransactionFleetFuelPriceData.canParse(json) ? IssuingTransactionFleetFuelPriceData.fromJson(json) : null,
); }

final IssuingTransactionFleetFuelPriceData? issuingTransactionFleetFuelPriceData;

/// At least one variant must be present.
bool get isValid { return issuingTransactionFleetFuelPriceData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionFleetFuelPriceData?.toJson(),
}; } 
 }
