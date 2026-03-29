// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_request_payment_settings_default_mandate.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_options.dart';import 'post_invoices_invoice_request_payment_settings_payment_method_types.dart';/// Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
final class PostInvoicesInvoiceRequestPaymentSettings {const PostInvoicesInvoiceRequestPaymentSettings({this.defaultMandate, this.paymentMethodOptions, this.paymentMethodTypes, });

factory PostInvoicesInvoiceRequestPaymentSettings.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceRequestPaymentSettings(
  defaultMandate: json['default_mandate'] != null ? OneOf2.parse(json['default_mandate'], fromA: (v) => v as String, fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2.fromJson(v as String),) : null,
  paymentMethodOptions: json['payment_method_options'] != null ? PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null,
  paymentMethodTypes: json['payment_method_types'] != null ? OneOf2.parse(json['payment_method_types'], fromA: (v) => (v as List<dynamic>).map((e) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodTypesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodTypesVariant2.fromJson(v as String),) : null,
); }

final PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate? defaultMandate;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions? paymentMethodOptions;

final PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodTypes? paymentMethodTypes;

Map<String, dynamic> toJson() { return {
  if (defaultMandate != null) 'default_mandate': defaultMandate?.toJson(),
  if (paymentMethodOptions != null) 'payment_method_options': paymentMethodOptions?.toJson(),
  if (paymentMethodTypes != null) 'payment_method_types': paymentMethodTypes?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostInvoicesInvoiceRequestPaymentSettings copyWith({PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate Function()? defaultMandate, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptions Function()? paymentMethodOptions, PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodTypes Function()? paymentMethodTypes, }) { return PostInvoicesInvoiceRequestPaymentSettings(
  defaultMandate: defaultMandate != null ? defaultMandate() : this.defaultMandate,
  paymentMethodOptions: paymentMethodOptions != null ? paymentMethodOptions() : this.paymentMethodOptions,
  paymentMethodTypes: paymentMethodTypes != null ? paymentMethodTypes() : this.paymentMethodTypes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettings &&
          defaultMandate == other.defaultMandate &&
          paymentMethodOptions == other.paymentMethodOptions &&
          paymentMethodTypes == other.paymentMethodTypes; } 
@override int get hashCode { return Object.hash(defaultMandate, paymentMethodOptions, paymentMethodTypes); } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettings(defaultMandate: $defaultMandate, paymentMethodOptions: $paymentMethodOptions, paymentMethodTypes: $paymentMethodTypes)'; } 
 }
