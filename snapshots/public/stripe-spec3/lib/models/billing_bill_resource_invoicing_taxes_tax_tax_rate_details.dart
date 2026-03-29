// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_bill_resource_invoicing_taxes_tax_rate_details.dart';/// Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
final class BillingBillResourceInvoicingTaxesTaxTaxRateDetails {const BillingBillResourceInvoicingTaxesTaxTaxRateDetails({this.billingBillResourceInvoicingTaxesTaxRateDetails});

factory BillingBillResourceInvoicingTaxesTaxTaxRateDetails.fromJson(Map<String, dynamic> json) { return BillingBillResourceInvoicingTaxesTaxTaxRateDetails(
  billingBillResourceInvoicingTaxesTaxRateDetails: BillingBillResourceInvoicingTaxesTaxRateDetails.canParse(json) ? BillingBillResourceInvoicingTaxesTaxRateDetails.fromJson(json) : null,
); }

final BillingBillResourceInvoicingTaxesTaxRateDetails? billingBillResourceInvoicingTaxesTaxRateDetails;

/// At least one variant must be present.
bool get isValid { return billingBillResourceInvoicingTaxesTaxRateDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingBillResourceInvoicingTaxesTaxRateDetails?.toJson(),
}; } 
 }
