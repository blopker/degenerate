// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_card_shipping.dart';/// Where and how the card will be shipped.
final class IssuingCardShipping2 {const IssuingCardShipping2({this.issuingCardShipping});

factory IssuingCardShipping2.fromJson(Map<String, dynamic> json) { return IssuingCardShipping2(
  issuingCardShipping: IssuingCardShipping.canParse(json) ? IssuingCardShipping.fromJson(json) : null,
); }

final IssuingCardShipping? issuingCardShipping;

/// At least one variant must be present.
bool get isValid { return issuingCardShipping != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardShipping?.toJson(),
}; } 
 }
