// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_postal_address.dart';/// The customer's postal address (for example, home or business location).
final class TaxProductResourceCustomerDetailsAddress {const TaxProductResourceCustomerDetailsAddress({this.taxProductResourcePostalAddress});

factory TaxProductResourceCustomerDetailsAddress.fromJson(Map<String, dynamic> json) { return TaxProductResourceCustomerDetailsAddress(
  taxProductResourcePostalAddress: TaxProductResourcePostalAddress.canParse(json) ? TaxProductResourcePostalAddress.fromJson(json) : null,
); }

final TaxProductResourcePostalAddress? taxProductResourcePostalAddress;

/// At least one variant must be present.
bool get isValid { return taxProductResourcePostalAddress != null; } 
Map<String, dynamic> toJson() { return {
  ...?taxProductResourcePostalAddress?.toJson(),
}; } 
 }
