// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoices_resource_shipping_cost.dart';/// The details of the cost of shipping, including the ShippingRate applied to the invoice.
final class CreditNoteShippingCost {const CreditNoteShippingCost({this.invoicesResourceShippingCost});

factory CreditNoteShippingCost.fromJson(Map<String, dynamic> json) { return CreditNoteShippingCost(
  invoicesResourceShippingCost: InvoicesResourceShippingCost.canParse(json) ? InvoicesResourceShippingCost.fromJson(json) : null,
); }

final InvoicesResourceShippingCost? invoicesResourceShippingCost;

/// At least one variant must be present.
bool get isValid { return invoicesResourceShippingCost != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicesResourceShippingCost?.toJson(),
}; } 
 }
