// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_authorization_fleet_tax_data.dart';/// Information about tax included in this transaction.
final class IssuingAuthorizationFleetReportedBreakdownTax {const IssuingAuthorizationFleetReportedBreakdownTax({this.issuingAuthorizationFleetTaxData});

factory IssuingAuthorizationFleetReportedBreakdownTax.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetReportedBreakdownTax(
  issuingAuthorizationFleetTaxData: IssuingAuthorizationFleetTaxData.canParse(json) ? IssuingAuthorizationFleetTaxData.fromJson(json) : null,
); }

final IssuingAuthorizationFleetTaxData? issuingAuthorizationFleetTaxData;

/// At least one variant must be present.
bool get isValid { return issuingAuthorizationFleetTaxData != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingAuthorizationFleetTaxData?.toJson(),
}; } 
 }
