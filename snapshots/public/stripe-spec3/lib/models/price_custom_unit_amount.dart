// GENERATED CODE - DO NOT MODIFY BY HAND

import 'custom_unit_amount.dart';/// When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
final class PriceCustomUnitAmount {const PriceCustomUnitAmount({this.customUnitAmount});

factory PriceCustomUnitAmount.fromJson(Map<String, dynamic> json) { return PriceCustomUnitAmount(
  customUnitAmount: CustomUnitAmount.canParse(json) ? CustomUnitAmount.fromJson(json) : null,
); }

final CustomUnitAmount? customUnitAmount;

/// At least one variant must be present.
bool get isValid { return customUnitAmount != null; } 
Map<String, dynamic> toJson() { return {
  ...?customUnitAmount?.toJson(),
}; } 
 }
