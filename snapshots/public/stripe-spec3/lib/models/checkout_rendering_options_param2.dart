// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CheckoutRenderingOptionsParam2AmountTaxDisplay {const CheckoutRenderingOptionsParam2AmountTaxDisplay._(this.value);

factory CheckoutRenderingOptionsParam2AmountTaxDisplay.fromJson(String json) { return switch (json) {
  '' => $empty,
  'exclude_tax' => excludeTax,
  'include_inclusive_tax' => includeInclusiveTax,
  _ => CheckoutRenderingOptionsParam2AmountTaxDisplay._(json),
}; }

static const CheckoutRenderingOptionsParam2AmountTaxDisplay $empty = CheckoutRenderingOptionsParam2AmountTaxDisplay._('');

static const CheckoutRenderingOptionsParam2AmountTaxDisplay excludeTax = CheckoutRenderingOptionsParam2AmountTaxDisplay._('exclude_tax');

static const CheckoutRenderingOptionsParam2AmountTaxDisplay includeInclusiveTax = CheckoutRenderingOptionsParam2AmountTaxDisplay._('include_inclusive_tax');

static const List<CheckoutRenderingOptionsParam2AmountTaxDisplay> values = [$empty, excludeTax, includeInclusiveTax];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutRenderingOptionsParam2AmountTaxDisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutRenderingOptionsParam2AmountTaxDisplay($value)'; } 
 }
@immutable final class CheckoutRenderingOptionsParam2 {const CheckoutRenderingOptionsParam2({this.amountTaxDisplay, this.template, });

factory CheckoutRenderingOptionsParam2.fromJson(Map<String, dynamic> json) { return CheckoutRenderingOptionsParam2(
  amountTaxDisplay: json['amount_tax_display'] != null ? CheckoutRenderingOptionsParam2AmountTaxDisplay.fromJson(json['amount_tax_display'] as String) : null,
  template: json['template'] as String?,
); }

final CheckoutRenderingOptionsParam2AmountTaxDisplay? amountTaxDisplay;

final String? template;

Map<String, dynamic> toJson() { return {
  if (amountTaxDisplay != null) 'amount_tax_display': amountTaxDisplay?.toJson(),
  'template': ?template,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_tax_display', 'template'}.contains(key)); } 
CheckoutRenderingOptionsParam2 copyWith({CheckoutRenderingOptionsParam2AmountTaxDisplay Function()? amountTaxDisplay, String Function()? template, }) { return CheckoutRenderingOptionsParam2(
  amountTaxDisplay: amountTaxDisplay != null ? amountTaxDisplay() : this.amountTaxDisplay,
  template: template != null ? template() : this.template,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutRenderingOptionsParam2 &&
          amountTaxDisplay == other.amountTaxDisplay &&
          template == other.template; } 
@override int get hashCode { return Object.hash(amountTaxDisplay, template); } 
@override String toString() { return 'CheckoutRenderingOptionsParam2(amountTaxDisplay: $amountTaxDisplay, template: $template)'; } 
 }
