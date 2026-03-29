// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_cardholder_individual.dart';/// Additional information about an `individual` cardholder.
final class IssuingCardholderIndividual2 {const IssuingCardholderIndividual2({this.issuingCardholderIndividual});

factory IssuingCardholderIndividual2.fromJson(Map<String, dynamic> json) { return IssuingCardholderIndividual2(
  issuingCardholderIndividual: IssuingCardholderIndividual.canParse(json) ? IssuingCardholderIndividual.fromJson(json) : null,
); }

final IssuingCardholderIndividual? issuingCardholderIndividual;

/// At least one variant must be present.
bool get isValid { return issuingCardholderIndividual != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardholderIndividual?.toJson(),
}; } 
 }
