// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_tax_transaction_resource_reversal.dart';/// If `type=reversal`, contains information about what was reversed.
final class TaxTransactionReversal {const TaxTransactionReversal({this.taxProductResourceTaxTransactionResourceReversal});

factory TaxTransactionReversal.fromJson(Map<String, dynamic> json) { return TaxTransactionReversal(
  taxProductResourceTaxTransactionResourceReversal: TaxProductResourceTaxTransactionResourceReversal.canParse(json) ? TaxProductResourceTaxTransactionResourceReversal.fromJson(json) : null,
); }

final TaxProductResourceTaxTransactionResourceReversal? taxProductResourceTaxTransactionResourceReversal;

/// At least one variant must be present.
bool get isValid { return taxProductResourceTaxTransactionResourceReversal != null; } 
Map<String, dynamic> toJson() { return {
  ...?taxProductResourceTaxTransactionResourceReversal?.toJson(),
}; } 
 }
