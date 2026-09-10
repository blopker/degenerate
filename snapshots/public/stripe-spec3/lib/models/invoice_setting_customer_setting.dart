// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_setting_custom_field.dart';import 'invoice_setting_customer_rendering_options.dart';import 'invoice_setting_customer_setting_default_payment_method.dart';import 'payment_method.dart';/// 
@immutable final class InvoiceSettingCustomerSetting {const InvoiceSettingCustomerSetting({this.customFields = const Omittable.absent(), this.defaultPaymentMethod = const Omittable.absent(), this.footer = const Omittable.absent(), this.renderingOptions = const Omittable.absent(), });

factory InvoiceSettingCustomerSetting.fromJson(Map<String, dynamic> json) { return InvoiceSettingCustomerSetting(
  customFields: json.containsKey('custom_fields') ? Omittable((json['custom_fields'] as List<dynamic>?)?.map((e) => InvoiceSettingCustomField.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  defaultPaymentMethod: json.containsKey('default_payment_method') ? Omittable(json['default_payment_method'] != null ? OneOf2.parse(json['default_payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  footer: json.containsKey('footer') ? Omittable(json['footer'] as String?) : const Omittable.absent(),
  renderingOptions: json.containsKey('rendering_options') ? Omittable(json['rendering_options'] != null ? InvoiceSettingCustomerRenderingOptions.fromJson(json['rendering_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Default custom fields to be displayed on invoices for this customer.
final Omittable<List<InvoiceSettingCustomField>?> customFields;

/// ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
final Omittable<InvoiceSettingCustomerSettingDefaultPaymentMethod?> defaultPaymentMethod;

/// Default footer to be displayed on invoices for this customer.
final Omittable<String?> footer;

/// Default options for invoice PDF rendering for this customer.
final Omittable<InvoiceSettingCustomerRenderingOptions?> renderingOptions;

Map<String, dynamic> toJson() { return {
  if (customFields.isPresent) 'custom_fields': customFields.value?.map((e) => e.toJson()).toList(),
  if (defaultPaymentMethod.isPresent) 'default_payment_method': defaultPaymentMethod.value?.toJson(),
  if (footer.isPresent) 'footer': footer.value,
  if (renderingOptions.isPresent) 'rendering_options': renderingOptions.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_fields', 'default_payment_method', 'footer', 'rendering_options'}.contains(key)); } 
InvoiceSettingCustomerSetting copyWith({Omittable<List<InvoiceSettingCustomField>?>? customFields, Omittable<InvoiceSettingCustomerSettingDefaultPaymentMethod?>? defaultPaymentMethod, Omittable<String?>? footer, Omittable<InvoiceSettingCustomerRenderingOptions?>? renderingOptions, }) { return InvoiceSettingCustomerSetting(
  customFields: customFields ?? this.customFields,
  defaultPaymentMethod: defaultPaymentMethod ?? this.defaultPaymentMethod,
  footer: footer ?? this.footer,
  renderingOptions: renderingOptions ?? this.renderingOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceSettingCustomerSetting &&
          customFields.isPresent == other.customFields.isPresent &&
          listEquals(customFields.value, other.customFields.value) &&
          defaultPaymentMethod == other.defaultPaymentMethod &&
          footer == other.footer &&
          renderingOptions == other.renderingOptions; } 
@override int get hashCode { return Object.hash(Object.hashAll(customFields.value ?? const []), defaultPaymentMethod, footer, renderingOptions); } 
@override String toString() { return 'InvoiceSettingCustomerSetting(customFields: $customFields, defaultPaymentMethod: $defaultPaymentMethod, footer: $footer, renderingOptions: $renderingOptions)'; } 
 }
