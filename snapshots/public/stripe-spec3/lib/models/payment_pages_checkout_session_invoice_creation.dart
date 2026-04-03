// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_pages_checkout_session_invoice_settings.dart';/// 
@immutable final class PaymentPagesCheckoutSessionInvoiceCreation {const PaymentPagesCheckoutSessionInvoiceCreation({required this.enabled, required this.invoiceData, });

factory PaymentPagesCheckoutSessionInvoiceCreation.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionInvoiceCreation(
  enabled: json['enabled'] as bool,
  invoiceData: PaymentPagesCheckoutSessionInvoiceSettings.fromJson(json['invoice_data'] as Map<String, dynamic>),
); }

/// Indicates whether invoice creation is enabled for the Checkout Session.
final bool enabled;

final PaymentPagesCheckoutSessionInvoiceSettings invoiceData;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'invoice_data': invoiceData.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('invoice_data'); } 
PaymentPagesCheckoutSessionInvoiceCreation copyWith({bool? enabled, PaymentPagesCheckoutSessionInvoiceSettings? invoiceData, }) { return PaymentPagesCheckoutSessionInvoiceCreation(
  enabled: enabled ?? this.enabled,
  invoiceData: invoiceData ?? this.invoiceData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionInvoiceCreation &&
          enabled == other.enabled &&
          invoiceData == other.invoiceData; } 
@override int get hashCode { return Object.hash(enabled, invoiceData); } 
@override String toString() { return 'PaymentPagesCheckoutSessionInvoiceCreation(enabled: $enabled, invoiceData: $invoiceData)'; } 
 }
