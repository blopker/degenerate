// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_credit_notes_preview_lines_lines_tax_amounts_variant1.dart';@immutable final class GetCreditNotesPreviewLinesLinesTaxAmountsVariant2 {const GetCreditNotesPreviewLinesLinesTaxAmountsVariant2._(this.value);

factory GetCreditNotesPreviewLinesLinesTaxAmountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => GetCreditNotesPreviewLinesLinesTaxAmountsVariant2._(json),
}; }

static const GetCreditNotesPreviewLinesLinesTaxAmountsVariant2 $empty = GetCreditNotesPreviewLinesLinesTaxAmountsVariant2._('');

static const List<GetCreditNotesPreviewLinesLinesTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCreditNotesPreviewLinesLinesTaxAmountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCreditNotesPreviewLinesLinesTaxAmountsVariant2($value)'; } 
 }

@immutable
final class GetCreditNotesPreviewLinesLinesTaxAmounts {
  const GetCreditNotesPreviewLinesLinesTaxAmounts({this.listGetCreditNotesPreviewLinesLinesTaxAmountsVariant1 = const Omittable.absent(),
this.getCreditNotesPreviewLinesLinesTaxAmountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCreditNotesPreviewLinesLinesTaxAmounts._({required this.rawValue, required this.listGetCreditNotesPreviewLinesLinesTaxAmountsVariant1,
required this.getCreditNotesPreviewLinesLinesTaxAmountsVariant2,});
  factory GetCreditNotesPreviewLinesLinesTaxAmounts.fromJson(Object? json) => GetCreditNotesPreviewLinesLinesTaxAmounts._(
    rawValue: Omittable(json),
    listGetCreditNotesPreviewLinesLinesTaxAmountsVariant1: parseAnyOfVariant<List<GetCreditNotesPreviewLinesLinesTaxAmountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => GetCreditNotesPreviewLinesLinesTaxAmountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
getCreditNotesPreviewLinesLinesTaxAmountsVariant2: parseAnyOfVariant<GetCreditNotesPreviewLinesLinesTaxAmountsVariant2>(json, (value) => GetCreditNotesPreviewLinesLinesTaxAmountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<GetCreditNotesPreviewLinesLinesTaxAmountsVariant1>> listGetCreditNotesPreviewLinesLinesTaxAmountsVariant1;
final Omittable<GetCreditNotesPreviewLinesLinesTaxAmountsVariant2> getCreditNotesPreviewLinesLinesTaxAmountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listGetCreditNotesPreviewLinesLinesTaxAmountsVariant1.isPresent || getCreditNotesPreviewLinesLinesTaxAmountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listGetCreditNotesPreviewLinesLinesTaxAmountsVariant1.isPresent) listGetCreditNotesPreviewLinesLinesTaxAmountsVariant1.value?.map((e) => e.toJson()).toList(),
if (getCreditNotesPreviewLinesLinesTaxAmountsVariant2.isPresent) getCreditNotesPreviewLinesLinesTaxAmountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCreditNotesPreviewLinesLinesTaxAmounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCreditNotesPreviewLinesLinesTaxAmounts(${toJson()})';
}
