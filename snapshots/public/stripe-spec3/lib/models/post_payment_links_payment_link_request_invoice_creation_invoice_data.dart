// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_payment_link_request_invoice_creation_invoice_data_account_tax_ids.dart';import 'post_payment_links_payment_link_request_invoice_creation_invoice_data_custom_fields.dart';import 'post_payment_links_payment_link_request_invoice_creation_invoice_data_issuer.dart';import 'post_payment_links_payment_link_request_invoice_creation_invoice_data_metadata.dart';import 'post_payment_links_payment_link_request_invoice_creation_invoice_data_rendering_options.dart';@immutable final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData {const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData({this.accountTaxIds, this.customFields, this.description, this.footer, this.issuer, this.metadata, this.renderingOptions, });

factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData(
  accountTaxIds: json['account_tax_ids'] != null ? PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataAccountTaxIds.fromJson(json['account_tax_ids']) : null,
  customFields: json['custom_fields'] != null ? PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields.fromJson(json['custom_fields']) : null,
  description: json['description'] as String?,
  footer: json['footer'] as String?,
  issuer: json['issuer'] != null ? PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
  metadata: json['metadata'] != null ? PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata.fromJson(json['metadata']) : null,
  renderingOptions: json['rendering_options'] != null ? PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions.fromJson(json['rendering_options']) : null,
); }

final PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataAccountTaxIds? accountTaxIds;

final PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields? customFields;

final String? description;

final String? footer;

final PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer? issuer;

final PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata? metadata;

final PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions? renderingOptions;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.toJson(),
  if (customFields != null) 'custom_fields': customFields?.toJson(),
  'description': ?description,
  'footer': ?footer,
  if (issuer != null) 'issuer': issuer?.toJson(),
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (renderingOptions != null) 'rendering_options': renderingOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_tax_ids', 'custom_fields', 'description', 'footer', 'issuer', 'metadata', 'rendering_options'}.contains(key)); } 
PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData copyWith({PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataAccountTaxIds? Function()? accountTaxIds, PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields? Function()? customFields, String? Function()? description, String? Function()? footer, PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataIssuer? Function()? issuer, PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata? Function()? metadata, PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataRenderingOptions? Function()? renderingOptions, }) { return PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  customFields: customFields != null ? customFields() : this.customFields,
  description: description != null ? description() : this.description,
  footer: footer != null ? footer() : this.footer,
  issuer: issuer != null ? issuer() : this.issuer,
  metadata: metadata != null ? metadata() : this.metadata,
  renderingOptions: renderingOptions != null ? renderingOptions() : this.renderingOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData &&
          accountTaxIds == other.accountTaxIds &&
          customFields == other.customFields &&
          description == other.description &&
          footer == other.footer &&
          issuer == other.issuer &&
          metadata == other.metadata &&
          renderingOptions == other.renderingOptions; } 
@override int get hashCode { return Object.hash(accountTaxIds, customFields, description, footer, issuer, metadata, renderingOptions); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceData(accountTaxIds: $accountTaxIds, customFields: $customFields, description: $description, footer: $footer, issuer: $issuer, metadata: $metadata, renderingOptions: $renderingOptions)'; } 
 }
