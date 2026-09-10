// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class InvoiceSettingCustomerRenderingOptions {const InvoiceSettingCustomerRenderingOptions({this.amountTaxDisplay = const Omittable.absent(), this.template = const Omittable.absent(), });

factory InvoiceSettingCustomerRenderingOptions.fromJson(Map<String, dynamic> json) { return InvoiceSettingCustomerRenderingOptions(
  amountTaxDisplay: json.containsKey('amount_tax_display') ? Omittable(json['amount_tax_display'] as String?) : const Omittable.absent(),
  template: json.containsKey('template') ? Omittable(json['template'] as String?) : const Omittable.absent(),
); }

/// How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
final Omittable<String?> amountTaxDisplay;

/// ID of the invoice rendering template to be used for this customer's invoices. If set, the template will be used on all invoices for this customer unless a template is set directly on the invoice.
final Omittable<String?> template;

Map<String, dynamic> toJson() { return {
  if (amountTaxDisplay.isPresent) 'amount_tax_display': amountTaxDisplay.value,
  if (template.isPresent) 'template': template.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_tax_display', 'template'}.contains(key)); } 
InvoiceSettingCustomerRenderingOptions copyWith({Omittable<String?>? amountTaxDisplay, Omittable<String?>? template, }) { return InvoiceSettingCustomerRenderingOptions(
  amountTaxDisplay: amountTaxDisplay ?? this.amountTaxDisplay,
  template: template ?? this.template,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceSettingCustomerRenderingOptions &&
          amountTaxDisplay == other.amountTaxDisplay &&
          template == other.template; } 
@override int get hashCode { return Object.hash(amountTaxDisplay, template); } 
@override String toString() { return 'InvoiceSettingCustomerRenderingOptions(amountTaxDisplay: $amountTaxDisplay, template: $template)'; } 
 }
