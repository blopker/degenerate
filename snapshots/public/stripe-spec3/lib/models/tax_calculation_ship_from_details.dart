// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_ship_from_details.dart';/// The details of the ship from location, such as the address.
final class TaxCalculationShipFromDetails {const TaxCalculationShipFromDetails({this.taxProductResourceShipFromDetails});

factory TaxCalculationShipFromDetails.fromJson(Map<String, dynamic> json) { return TaxCalculationShipFromDetails(
  taxProductResourceShipFromDetails: TaxProductResourceShipFromDetails.canParse(json) ? TaxProductResourceShipFromDetails.fromJson(json) : null,
); }

final TaxProductResourceShipFromDetails? taxProductResourceShipFromDetails;

/// At least one variant must be present.
bool get isValid { return taxProductResourceShipFromDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?taxProductResourceShipFromDetails?.toJson(),
}; } 
 }
