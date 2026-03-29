// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_cardholder_id_document.dart';/// An identifying document, either a passport or local ID card.
final class IssuingCardholderVerificationDocument {const IssuingCardholderVerificationDocument({this.issuingCardholderIdDocument});

factory IssuingCardholderVerificationDocument.fromJson(Map<String, dynamic> json) { return IssuingCardholderVerificationDocument(
  issuingCardholderIdDocument: IssuingCardholderIdDocument.canParse(json) ? IssuingCardholderIdDocument.fromJson(json) : null,
); }

final IssuingCardholderIdDocument? issuingCardholderIdDocument;

/// At least one variant must be present.
bool get isValid { return issuingCardholderIdDocument != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardholderIdDocument?.toJson(),
}; } 
 }
