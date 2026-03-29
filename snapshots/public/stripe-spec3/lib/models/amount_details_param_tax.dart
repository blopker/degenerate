// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param2.dart';final class AmountDetailsParamTaxVariant2 {const AmountDetailsParamTaxVariant2._(this.value);

factory AmountDetailsParamTaxVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParamTaxVariant2._(json),
}; }

static const AmountDetailsParamTaxVariant2 $empty = AmountDetailsParamTaxVariant2._('');

static const List<AmountDetailsParamTaxVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParamTaxVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParamTaxVariant2($value)'; } 
 }
typedef AmountDetailsParamTax = OneOf2<AmountDetailsTaxParam2,AmountDetailsParamTaxVariant2>;