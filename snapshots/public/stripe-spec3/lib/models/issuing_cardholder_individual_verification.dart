// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_cardholder_verification.dart';/// Government-issued ID document for this cardholder.
final class IssuingCardholderIndividualVerification {const IssuingCardholderIndividualVerification({this.issuingCardholderVerification});

factory IssuingCardholderIndividualVerification.fromJson(Map<String, dynamic> json) { return IssuingCardholderIndividualVerification(
  issuingCardholderVerification: IssuingCardholderVerification.canParse(json) ? IssuingCardholderVerification.fromJson(json) : null,
); }

final IssuingCardholderVerification? issuingCardholderVerification;

/// At least one variant must be present.
bool get isValid { return issuingCardholderVerification != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardholderVerification?.toJson(),
}; } 
 }
