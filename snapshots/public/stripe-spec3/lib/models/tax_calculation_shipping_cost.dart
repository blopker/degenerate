// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_tax_calculation_shipping_cost.dart';/// The shipping cost details for the calculation.
final class TaxCalculationShippingCost {const TaxCalculationShippingCost({this.taxProductResourceTaxCalculationShippingCost});

factory TaxCalculationShippingCost.fromJson(Map<String, dynamic> json) { return TaxCalculationShippingCost(
  taxProductResourceTaxCalculationShippingCost: TaxProductResourceTaxCalculationShippingCost.canParse(json) ? TaxProductResourceTaxCalculationShippingCost.fromJson(json) : null,
); }

final TaxProductResourceTaxCalculationShippingCost? taxProductResourceTaxCalculationShippingCost;

/// At least one variant must be present.
bool get isValid { return taxProductResourceTaxCalculationShippingCost != null; } 
Map<String, dynamic> toJson() { return {
  ...?taxProductResourceTaxCalculationShippingCost?.toJson(),
}; } 
 }
