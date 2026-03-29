// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class GetCreditNotesPreviewLinesLinesTaxRatesVariant2 {const GetCreditNotesPreviewLinesLinesTaxRatesVariant2._(this.value);

factory GetCreditNotesPreviewLinesLinesTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => GetCreditNotesPreviewLinesLinesTaxRatesVariant2._(json),
}; }

static const GetCreditNotesPreviewLinesLinesTaxRatesVariant2 $empty = GetCreditNotesPreviewLinesLinesTaxRatesVariant2._('');

static const List<GetCreditNotesPreviewLinesLinesTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCreditNotesPreviewLinesLinesTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCreditNotesPreviewLinesLinesTaxRatesVariant2($value)'; } 
 }
typedef GetCreditNotesPreviewLinesLinesTaxRates = OneOf2<List<String>,GetCreditNotesPreviewLinesLinesTaxRatesVariant2>;