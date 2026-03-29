// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_invoice_creation_invoice_data.dart';/// 
final class PaymentLinksResourceInvoiceCreation {const PaymentLinksResourceInvoiceCreation({required this.enabled, this.invoiceData, });

factory PaymentLinksResourceInvoiceCreation.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceInvoiceCreation(
  enabled: json['enabled'] as bool,
  invoiceData: json['invoice_data'] != null ? PaymentLinksResourceInvoiceCreationInvoiceData.fromJson(json['invoice_data'] as Map<String, dynamic>) : null,
); }

/// Enable creating an invoice on successful payment.
final bool enabled;

/// Configuration for the invoice. Default invoice values will be used if unspecified.
final PaymentLinksResourceInvoiceCreationInvoiceData? invoiceData;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (invoiceData != null) 'invoice_data': invoiceData?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentLinksResourceInvoiceCreation copyWith({bool? enabled, PaymentLinksResourceInvoiceCreationInvoiceData? Function()? invoiceData, }) { return PaymentLinksResourceInvoiceCreation(
  enabled: enabled ?? this.enabled,
  invoiceData: invoiceData != null ? invoiceData() : this.invoiceData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceInvoiceCreation &&
          enabled == other.enabled &&
          invoiceData == other.invoiceData; } 
@override int get hashCode { return Object.hash(enabled, invoiceData); } 
@override String toString() { return 'PaymentLinksResourceInvoiceCreation(enabled: $enabled, invoiceData: $invoiceData)'; } 
 }
