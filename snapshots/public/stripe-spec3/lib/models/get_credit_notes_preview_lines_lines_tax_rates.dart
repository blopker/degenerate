// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetCreditNotesPreviewLinesLinesTaxRatesVariant2 {const GetCreditNotesPreviewLinesLinesTaxRatesVariant2._(this.value);

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

@immutable
final class GetCreditNotesPreviewLinesLinesTaxRates {
  const GetCreditNotesPreviewLinesLinesTaxRates({this.listString = const Omittable.absent(),
this.getCreditNotesPreviewLinesLinesTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCreditNotesPreviewLinesLinesTaxRates._({required this.rawValue, required this.listString,
required this.getCreditNotesPreviewLinesLinesTaxRatesVariant2,});
  factory GetCreditNotesPreviewLinesLinesTaxRates.fromJson(Object? json) => GetCreditNotesPreviewLinesLinesTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
getCreditNotesPreviewLinesLinesTaxRatesVariant2: parseAnyOfVariant<GetCreditNotesPreviewLinesLinesTaxRatesVariant2>(json, (value) => GetCreditNotesPreviewLinesLinesTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<GetCreditNotesPreviewLinesLinesTaxRatesVariant2> getCreditNotesPreviewLinesLinesTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || getCreditNotesPreviewLinesLinesTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (getCreditNotesPreviewLinesLinesTaxRatesVariant2.isPresent) getCreditNotesPreviewLinesLinesTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCreditNotesPreviewLinesLinesTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCreditNotesPreviewLinesLinesTaxRates(${toJson()})';
}
