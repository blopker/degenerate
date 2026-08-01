// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_rendering_pdf.dart';/// 
@immutable final class InvoicesResourceInvoiceRendering {const InvoicesResourceInvoiceRendering({this.amountTaxDisplay = const Omittable.absent(), this.pdf = const Omittable.absent(), this.template = const Omittable.absent(), this.templateVersion = const Omittable.absent(), });

factory InvoicesResourceInvoiceRendering.fromJson(Map<String, dynamic> json) { return InvoicesResourceInvoiceRendering(
  amountTaxDisplay: json.containsKey('amount_tax_display') ? Omittable(json['amount_tax_display'] as String?) : const Omittable.absent(),
  pdf: json.containsKey('pdf') ? Omittable(json['pdf'] != null ? InvoiceRenderingPdf.fromJson(json['pdf'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  template: json.containsKey('template') ? Omittable(json['template'] as String?) : const Omittable.absent(),
  templateVersion: json.containsKey('template_version') ? Omittable(json['template_version'] != null ? (json['template_version'] as num).toInt() : null) : const Omittable.absent(),
); }

/// How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
final Omittable<String?> amountTaxDisplay;

/// Invoice pdf rendering options
final Omittable<InvoiceRenderingPdf?> pdf;

/// ID of the rendering template that the invoice is formatted by.
final Omittable<String?> template;

/// Version of the rendering template that the invoice is using.
final Omittable<int?> templateVersion;

Map<String, dynamic> toJson() { return {
  if (amountTaxDisplay.isPresent) 'amount_tax_display': amountTaxDisplay.value,
  if (pdf.isPresent) 'pdf': pdf.value?.toJson(),
  if (template.isPresent) 'template': template.value,
  if (templateVersion.isPresent) 'template_version': templateVersion.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_tax_display', 'pdf', 'template', 'template_version'}.contains(key)); } 
InvoicesResourceInvoiceRendering copyWith({Omittable<String?>? amountTaxDisplay, Omittable<InvoiceRenderingPdf?>? pdf, Omittable<String?>? template, Omittable<int?>? templateVersion, }) { return InvoicesResourceInvoiceRendering(
  amountTaxDisplay: amountTaxDisplay ?? this.amountTaxDisplay,
  pdf: pdf ?? this.pdf,
  template: template ?? this.template,
  templateVersion: templateVersion ?? this.templateVersion,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicesResourceInvoiceRendering &&
          amountTaxDisplay == other.amountTaxDisplay &&
          pdf == other.pdf &&
          template == other.template &&
          templateVersion == other.templateVersion; } 
@override int get hashCode { return Object.hash(amountTaxDisplay, pdf, template, templateVersion); } 
@override String toString() { return 'InvoicesResourceInvoiceRendering(amountTaxDisplay: $amountTaxDisplay, pdf: $pdf, template: $template, templateVersion: $templateVersion)'; } 
 }
