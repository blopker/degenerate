// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_cardholder_company.dart';/// Additional information about a `company` cardholder.
final class IssuingCardholderCompany2 {const IssuingCardholderCompany2({this.issuingCardholderCompany});

factory IssuingCardholderCompany2.fromJson(Map<String, dynamic> json) { return IssuingCardholderCompany2(
  issuingCardholderCompany: IssuingCardholderCompany.canParse(json) ? IssuingCardholderCompany.fromJson(json) : null,
); }

final IssuingCardholderCompany? issuingCardholderCompany;

/// At least one variant must be present.
bool get isValid { return issuingCardholderCompany != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardholderCompany?.toJson(),
}; } 
 }
