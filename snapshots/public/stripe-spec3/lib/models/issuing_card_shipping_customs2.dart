// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_card_shipping_customs.dart';/// Additional information that may be required for clearing customs.
final class IssuingCardShippingCustoms2 {const IssuingCardShippingCustoms2({this.issuingCardShippingCustoms});

factory IssuingCardShippingCustoms2.fromJson(Map<String, dynamic> json) { return IssuingCardShippingCustoms2(
  issuingCardShippingCustoms: IssuingCardShippingCustoms.canParse(json) ? IssuingCardShippingCustoms.fromJson(json) : null,
); }

final IssuingCardShippingCustoms? issuingCardShippingCustoms;

/// At least one variant must be present.
bool get isValid { return issuingCardShippingCustoms != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardShippingCustoms?.toJson(),
}; } 
 }
