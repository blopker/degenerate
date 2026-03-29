// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_authorization_fleet_non_fuel_price_data.dart';/// Breakdown of non-fuel portion of the purchase.
final class IssuingAuthorizationFleetReportedBreakdownNonFuel {const IssuingAuthorizationFleetReportedBreakdownNonFuel({this.issuingAuthorizationFleetNonFuelPriceData});

factory IssuingAuthorizationFleetReportedBreakdownNonFuel.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetReportedBreakdownNonFuel(
  issuingAuthorizationFleetNonFuelPriceData: IssuingAuthorizationFleetNonFuelPriceData.canParse(json) ? IssuingAuthorizationFleetNonFuelPriceData.fromJson(json) : null,
); }

final IssuingAuthorizationFleetNonFuelPriceData? issuingAuthorizationFleetNonFuelPriceData;

/// At least one variant must be present.
bool get isValid { return issuingAuthorizationFleetNonFuelPriceData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingAuthorizationFleetNonFuelPriceData?.toJson(),
}; } 
 }
