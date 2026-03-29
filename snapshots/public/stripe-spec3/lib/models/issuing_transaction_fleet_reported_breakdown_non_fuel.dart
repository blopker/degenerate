// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_fleet_non_fuel_price_data.dart';/// Breakdown of non-fuel portion of the purchase.
final class IssuingTransactionFleetReportedBreakdownNonFuel {const IssuingTransactionFleetReportedBreakdownNonFuel({this.issuingTransactionFleetNonFuelPriceData});

factory IssuingTransactionFleetReportedBreakdownNonFuel.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetReportedBreakdownNonFuel(
  issuingTransactionFleetNonFuelPriceData: IssuingTransactionFleetNonFuelPriceData.canParse(json) ? IssuingTransactionFleetNonFuelPriceData.fromJson(json) : null,
); }

final IssuingTransactionFleetNonFuelPriceData? issuingTransactionFleetNonFuelPriceData;

/// At least one variant must be present.
bool get isValid { return issuingTransactionFleetNonFuelPriceData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionFleetNonFuelPriceData?.toJson(),
}; } 
 }
