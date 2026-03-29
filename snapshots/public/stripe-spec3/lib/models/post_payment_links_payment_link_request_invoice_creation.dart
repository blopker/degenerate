// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_links_payment_link_request_invoice_creation_invoice_data.dart';/// Generate a post-purchase Invoice for one-time payments.
final class PostPaymentLinksPaymentLinkRequestInvoiceCreation {const PostPaymentLinksPaymentLinkRequestInvoiceCreation({required this.enabled, this.invoiceData, });

factory PostPaymentLinksPaymentLinkRequestInvoiceCreation.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestInvoiceCreation(
  enabled: json['enabled'] as bool,
  invoiceData: json['invoice_data'] != null ? PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData.fromJson(json['invoice_data'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData? invoiceData;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (invoiceData != null) 'invoice_data': invoiceData?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostPaymentLinksPaymentLinkRequestInvoiceCreation copyWith({bool? enabled, PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData Function()? invoiceData, }) { return PostPaymentLinksPaymentLinkRequestInvoiceCreation(
  enabled: enabled ?? this.enabled,
  invoiceData: invoiceData != null ? invoiceData() : this.invoiceData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestInvoiceCreation &&
          enabled == other.enabled &&
          invoiceData == other.invoiceData; } 
@override int get hashCode { return Object.hash(enabled, invoiceData); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInvoiceCreation(enabled: $enabled, invoiceData: $invoiceData)'; } 
 }
