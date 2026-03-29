// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_setting_customer_rendering_options.dart';/// Default options for invoice PDF rendering for this customer.
final class InvoiceSettingCustomerSettingRenderingOptions {const InvoiceSettingCustomerSettingRenderingOptions({this.invoiceSettingCustomerRenderingOptions});

factory InvoiceSettingCustomerSettingRenderingOptions.fromJson(Map<String, dynamic> json) { return InvoiceSettingCustomerSettingRenderingOptions(
  invoiceSettingCustomerRenderingOptions: InvoiceSettingCustomerRenderingOptions.canParse(json) ? InvoiceSettingCustomerRenderingOptions.fromJson(json) : null,
); }

final InvoiceSettingCustomerRenderingOptions? invoiceSettingCustomerRenderingOptions;

/// At least one variant must be present.
bool get isValid { return invoiceSettingCustomerRenderingOptions != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoiceSettingCustomerRenderingOptions?.toJson(),
}; } 
 }
