// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class InvoiceSettingCheckoutRenderingOptions {const InvoiceSettingCheckoutRenderingOptions({this.amountTaxDisplay = const Omittable.absent(), this.template = const Omittable.absent(), });

factory InvoiceSettingCheckoutRenderingOptions.fromJson(Map<String, dynamic> json) { return InvoiceSettingCheckoutRenderingOptions(
  amountTaxDisplay: json.containsKey('amount_tax_display') ? Omittable(json['amount_tax_display'] as String?) : const Omittable.absent(),
  template: json.containsKey('template') ? Omittable(json['template'] as String?) : const Omittable.absent(),
); }

/// How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
final Omittable<String?> amountTaxDisplay;

/// ID of the invoice rendering template to be used for the generated invoice.
final Omittable<String?> template;

Map<String, dynamic> toJson() { return {
  if (amountTaxDisplay.isPresent) 'amount_tax_display': amountTaxDisplay.value,
  if (template.isPresent) 'template': template.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_tax_display', 'template'}.contains(key)); } 
InvoiceSettingCheckoutRenderingOptions copyWith({Omittable<String?>? amountTaxDisplay, Omittable<String?>? template, }) { return InvoiceSettingCheckoutRenderingOptions(
  amountTaxDisplay: amountTaxDisplay ?? this.amountTaxDisplay,
  template: template ?? this.template,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceSettingCheckoutRenderingOptions &&
          amountTaxDisplay == other.amountTaxDisplay &&
          template == other.template; } 
@override int get hashCode { return Object.hash(amountTaxDisplay, template); } 
@override String toString() { return 'InvoiceSettingCheckoutRenderingOptions(amountTaxDisplay: $amountTaxDisplay, template: $template)'; } 
 }
