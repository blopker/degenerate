// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetCreditNotesPreviewLinesTaxRatesVariant2 {const GetCreditNotesPreviewLinesTaxRatesVariant2._(this.value);

factory GetCreditNotesPreviewLinesTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => GetCreditNotesPreviewLinesTaxRatesVariant2._(json),
}; }

static const GetCreditNotesPreviewLinesTaxRatesVariant2 $empty = GetCreditNotesPreviewLinesTaxRatesVariant2._('');

static const List<GetCreditNotesPreviewLinesTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCreditNotesPreviewLinesTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCreditNotesPreviewLinesTaxRatesVariant2($value)'; } 
 }

@immutable
final class GetCreditNotesPreviewLinesTaxRates {
  const GetCreditNotesPreviewLinesTaxRates({this.listString = const Omittable.absent(),
this.getCreditNotesPreviewLinesTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCreditNotesPreviewLinesTaxRates._({required this.rawValue, required this.listString,
required this.getCreditNotesPreviewLinesTaxRatesVariant2,});
  factory GetCreditNotesPreviewLinesTaxRates.fromJson(Object? json) => GetCreditNotesPreviewLinesTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
getCreditNotesPreviewLinesTaxRatesVariant2: parseAnyOfVariant<GetCreditNotesPreviewLinesTaxRatesVariant2>(json, (value) => GetCreditNotesPreviewLinesTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<GetCreditNotesPreviewLinesTaxRatesVariant2> getCreditNotesPreviewLinesTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || getCreditNotesPreviewLinesTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (getCreditNotesPreviewLinesTaxRatesVariant2.isPresent) getCreditNotesPreviewLinesTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCreditNotesPreviewLinesTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCreditNotesPreviewLinesTaxRates(${toJson()})';
}
