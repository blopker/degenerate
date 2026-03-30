// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_account_reference.dart';import 'deleted_tax_id.dart';import 'invoice_setting_checkout_rendering_options.dart';import 'invoice_setting_custom_field.dart';import 'payment_links_resource_invoice_settings_account_tax_ids.dart';import 'tax_id.dart';/// 
final class PaymentLinksResourceInvoiceSettings {const PaymentLinksResourceInvoiceSettings({this.accountTaxIds, this.customFields, this.description, this.footer, this.issuer, this.metadata, this.renderingOptions, });

factory PaymentLinksResourceInvoiceSettings.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceInvoiceSettings(
  accountTaxIds: (json['account_tax_ids'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => v as String, fromB: (v) => TaxId.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedTaxId.fromJson(v as Map<String, dynamic>),)).toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)?.map((e) => InvoiceSettingCustomField.fromJson(e as Map<String, dynamic>)).toList(),
  description: json['description'] as String?,
  footer: json['footer'] as String?,
  issuer: json['issuer'] != null ? ConnectAccountReference.fromJson(json['issuer'] as Map<String, dynamic>) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  renderingOptions: json['rendering_options'] != null ? InvoiceSettingCheckoutRenderingOptions.fromJson(json['rendering_options'] as Map<String, dynamic>) : null,
); }

/// The account tax IDs associated with the invoice.
final List<PaymentLinksResourceInvoiceSettingsAccountTaxIds>? accountTaxIds;

/// A list of up to 4 custom fields to be displayed on the invoice.
final List<InvoiceSettingCustomField>? customFields;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String? description;

/// Footer to be displayed on the invoice.
final String? footer;

/// The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
final ConnectAccountReference? issuer;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// Options for invoice PDF rendering.
final InvoiceSettingCheckoutRenderingOptions? renderingOptions;

Map<String, dynamic> toJson() { return {
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.map((e) => e.toJson()).toList(),
  if (customFields != null) 'custom_fields': customFields?.map((e) => e.toJson()).toList(),
  'description': ?description,
  'footer': ?footer,
  if (issuer != null) 'issuer': issuer?.toJson(),
  'metadata': ?metadata,
  if (renderingOptions != null) 'rendering_options': renderingOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_tax_ids', 'custom_fields', 'description', 'footer', 'issuer', 'metadata', 'rendering_options'}.contains(key)); } 
PaymentLinksResourceInvoiceSettings copyWith({List<PaymentLinksResourceInvoiceSettingsAccountTaxIds>? Function()? accountTaxIds, List<InvoiceSettingCustomField>? Function()? customFields, String? Function()? description, String? Function()? footer, ConnectAccountReference? Function()? issuer, Map<String, String>? Function()? metadata, InvoiceSettingCheckoutRenderingOptions? Function()? renderingOptions, }) { return PaymentLinksResourceInvoiceSettings(
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  customFields: customFields != null ? customFields() : this.customFields,
  description: description != null ? description() : this.description,
  footer: footer != null ? footer() : this.footer,
  issuer: issuer != null ? issuer() : this.issuer,
  metadata: metadata != null ? metadata() : this.metadata,
  renderingOptions: renderingOptions != null ? renderingOptions() : this.renderingOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceInvoiceSettings &&
          listEquals(accountTaxIds, other.accountTaxIds) &&
          listEquals(customFields, other.customFields) &&
          description == other.description &&
          footer == other.footer &&
          issuer == other.issuer &&
          metadata == other.metadata &&
          renderingOptions == other.renderingOptions; } 
@override int get hashCode { return Object.hash(Object.hashAll(accountTaxIds ?? const []), Object.hashAll(customFields ?? const []), description, footer, issuer, metadata, renderingOptions); } 
@override String toString() { return 'PaymentLinksResourceInvoiceSettings(accountTaxIds: $accountTaxIds, customFields: $customFields, description: $description, footer: $footer, issuer: $issuer, metadata: $metadata, renderingOptions: $renderingOptions)'; } 
 }
