// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_links_resource_invoice_settings.dart';/// 
@immutable final class PaymentLinksResourceInvoiceCreation {const PaymentLinksResourceInvoiceCreation({required this.enabled, this.invoiceData = const Omittable.absent(), });

factory PaymentLinksResourceInvoiceCreation.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceInvoiceCreation(
  enabled: json['enabled'] as bool,
  invoiceData: json.containsKey('invoice_data') ? Omittable(json['invoice_data'] != null ? PaymentLinksResourceInvoiceSettings.fromJson(json['invoice_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Enable creating an invoice on successful payment.
final bool enabled;

/// Configuration for the invoice. Default invoice values will be used if unspecified.
final Omittable<PaymentLinksResourceInvoiceSettings?> invoiceData;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (invoiceData.isPresent) 'invoice_data': invoiceData.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentLinksResourceInvoiceCreation copyWith({bool? enabled, Omittable<PaymentLinksResourceInvoiceSettings?>? invoiceData, }) { return PaymentLinksResourceInvoiceCreation(
  enabled: enabled ?? this.enabled,
  invoiceData: invoiceData ?? this.invoiceData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceInvoiceCreation &&
          enabled == other.enabled &&
          invoiceData == other.invoiceData; } 
@override int get hashCode { return Object.hash(enabled, invoiceData); } 
@override String toString() { return 'PaymentLinksResourceInvoiceCreation(enabled: $enabled, invoiceData: $invoiceData)'; } 
 }
