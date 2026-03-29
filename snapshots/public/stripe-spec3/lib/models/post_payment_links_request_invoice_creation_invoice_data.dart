// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checkout_rendering_options_param2.dart';import 'post_payment_links_request_invoice_creation_invoice_data_account_tax_ids.dart';import 'post_payment_links_request_invoice_creation_invoice_data_custom_fields.dart';import 'post_payment_links_request_invoice_creation_invoice_data_custom_fields_variant1.dart';import 'post_payment_links_request_invoice_creation_invoice_data_issuer.dart';import 'post_payment_links_request_invoice_creation_invoice_data_metadata.dart';import 'post_payment_links_request_invoice_creation_invoice_data_rendering_options.dart';final class PostPaymentLinksRequestInvoiceCreationInvoiceData {const PostPaymentLinksRequestInvoiceCreationInvoiceData({this.accountTaxIds, this.customFields, this.description, this.footer, this.issuer, this.metadata, this.renderingOptions, });

factory PostPaymentLinksRequestInvoiceCreationInvoiceData.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestInvoiceCreationInvoiceData(
  accountTaxIds: json['account_tax_ids'] != null ? OneOf2.parse(json['account_tax_ids'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIdsVariant2.fromJson(v as String),) : null,
  customFields: json['custom_fields'] != null ? OneOf2.parse(json['custom_fields'], fromA: (v) => (v as List<dynamic>).map((e) => PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(v as String),) : null,
  description: json['description'] as String?,
  footer: json['footer'] as String?,
  issuer: json['issuer'] != null ? PostPaymentLinksRequestInvoiceCreationInvoiceDataIssuer.fromJson(json['issuer'] as Map<String, dynamic>) : null,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadataVariant2.fromJson(v as String),) : null,
  renderingOptions: json['rendering_options'] != null ? OneOf2.parse(json['rendering_options'], fromA: (v) => CheckoutRenderingOptionsParam2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(v as String),) : null,
); }

final PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds? accountTaxIds;

final PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields? customFields;

final String? description;

final String? footer;

final PostPaymentLinksRequestInvoiceCreationInvoiceDataIssuer? issuer;

final PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata? metadata;

final PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions? renderingOptions;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.toJson(),
  if (customFields != null) 'custom_fields': customFields?.toJson(),
  'description': ?description,
  'footer': ?footer,
  if (issuer != null) 'issuer': issuer?.toJson(),
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (renderingOptions != null) 'rendering_options': renderingOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentLinksRequestInvoiceCreationInvoiceData copyWith({PostPaymentLinksRequestInvoiceCreationInvoiceDataAccountTaxIds Function()? accountTaxIds, PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields Function()? customFields, String Function()? description, String Function()? footer, PostPaymentLinksRequestInvoiceCreationInvoiceDataIssuer Function()? issuer, PostPaymentLinksRequestInvoiceCreationInvoiceDataMetadata Function()? metadata, PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions Function()? renderingOptions, }) { return PostPaymentLinksRequestInvoiceCreationInvoiceData(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  customFields: customFields != null ? customFields() : this.customFields,
  description: description != null ? description() : this.description,
  footer: footer != null ? footer() : this.footer,
  issuer: issuer != null ? issuer() : this.issuer,
  metadata: metadata != null ? metadata() : this.metadata,
  renderingOptions: renderingOptions != null ? renderingOptions() : this.renderingOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestInvoiceCreationInvoiceData &&
          accountTaxIds == other.accountTaxIds &&
          customFields == other.customFields &&
          description == other.description &&
          footer == other.footer &&
          issuer == other.issuer &&
          metadata == other.metadata &&
          renderingOptions == other.renderingOptions; } 
@override int get hashCode { return Object.hash(accountTaxIds, customFields, description, footer, issuer, metadata, renderingOptions); } 
@override String toString() { return 'PostPaymentLinksRequestInvoiceCreationInvoiceData(accountTaxIds: $accountTaxIds, customFields: $customFields, description: $description, footer: $footer, issuer: $issuer, metadata: $metadata, renderingOptions: $renderingOptions)'; } 
 }
