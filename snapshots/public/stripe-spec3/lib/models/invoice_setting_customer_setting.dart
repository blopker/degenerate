// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_setting_custom_field.dart';import 'invoice_setting_customer_setting_default_payment_method.dart';import 'invoice_setting_customer_setting_rendering_options.dart';import 'payment_method.dart';/// 
final class InvoiceSettingCustomerSetting {const InvoiceSettingCustomerSetting({this.customFields, this.defaultPaymentMethod, this.footer, this.renderingOptions, });

factory InvoiceSettingCustomerSetting.fromJson(Map<String, dynamic> json) { return InvoiceSettingCustomerSetting(
  customFields: (json['custom_fields'] as List<dynamic>?)?.map((e) => InvoiceSettingCustomField.fromJson(e as Map<String, dynamic>)).toList(),
  defaultPaymentMethod: json['default_payment_method'] != null ? OneOf2.parse(json['default_payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),) : null,
  footer: json['footer'] as String?,
  renderingOptions: json['rendering_options'] != null ? InvoiceSettingCustomerSettingRenderingOptions.fromJson(json['rendering_options'] as Map<String, dynamic>) : null,
); }

/// Default custom fields to be displayed on invoices for this customer.
final List<InvoiceSettingCustomField>? customFields;

/// ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
final InvoiceSettingCustomerSettingDefaultPaymentMethod? defaultPaymentMethod;

/// Default footer to be displayed on invoices for this customer.
final String? footer;

/// Default options for invoice PDF rendering for this customer.
final InvoiceSettingCustomerSettingRenderingOptions? renderingOptions;

Map<String, dynamic> toJson() { return {
  if (customFields != null) 'custom_fields': customFields?.map((e) => e.toJson()).toList(),
  if (defaultPaymentMethod != null) 'default_payment_method': defaultPaymentMethod?.toJson(),
  'footer': ?footer,
  if (renderingOptions != null) 'rendering_options': renderingOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_fields', 'default_payment_method', 'footer', 'rendering_options'}.contains(key)); } 
InvoiceSettingCustomerSetting copyWith({List<InvoiceSettingCustomField>? Function()? customFields, InvoiceSettingCustomerSettingDefaultPaymentMethod? Function()? defaultPaymentMethod, String? Function()? footer, InvoiceSettingCustomerSettingRenderingOptions? Function()? renderingOptions, }) { return InvoiceSettingCustomerSetting(
  customFields: customFields != null ? customFields() : this.customFields,
  defaultPaymentMethod: defaultPaymentMethod != null ? defaultPaymentMethod() : this.defaultPaymentMethod,
  footer: footer != null ? footer() : this.footer,
  renderingOptions: renderingOptions != null ? renderingOptions() : this.renderingOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceSettingCustomerSetting &&
          listEquals(customFields, other.customFields) &&
          defaultPaymentMethod == other.defaultPaymentMethod &&
          footer == other.footer &&
          renderingOptions == other.renderingOptions; } 
@override int get hashCode { return Object.hash(Object.hashAll(customFields ?? const []), defaultPaymentMethod, footer, renderingOptions); } 
@override String toString() { return 'InvoiceSettingCustomerSetting(customFields: $customFields, defaultPaymentMethod: $defaultPaymentMethod, footer: $footer, renderingOptions: $renderingOptions)'; } 
 }
