// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_tax_transaction_shipping_cost.dart';/// The shipping cost details for the transaction.
final class TaxTransactionShippingCost {const TaxTransactionShippingCost({this.taxProductResourceTaxTransactionShippingCost});

factory TaxTransactionShippingCost.fromJson(Map<String, dynamic> json) { return TaxTransactionShippingCost(
  taxProductResourceTaxTransactionShippingCost: TaxProductResourceTaxTransactionShippingCost.canParse(json) ? TaxProductResourceTaxTransactionShippingCost.fromJson(json) : null,
); }

final TaxProductResourceTaxTransactionShippingCost? taxProductResourceTaxTransactionShippingCost;

/// At least one variant must be present.
bool get isValid { return taxProductResourceTaxTransactionShippingCost != null; } 
Map<String, dynamic> toJson() { return {
  ...?taxProductResourceTaxTransactionShippingCost?.toJson(),
}; } 
 }
