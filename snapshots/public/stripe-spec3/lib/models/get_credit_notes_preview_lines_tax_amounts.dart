// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_credit_notes_preview_lines_tax_amounts_variant1.dart';@immutable final class GetCreditNotesPreviewLinesTaxAmountsVariant2 {const GetCreditNotesPreviewLinesTaxAmountsVariant2._(this.value);

factory GetCreditNotesPreviewLinesTaxAmountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => GetCreditNotesPreviewLinesTaxAmountsVariant2._(json),
}; }

static const GetCreditNotesPreviewLinesTaxAmountsVariant2 $empty = GetCreditNotesPreviewLinesTaxAmountsVariant2._('');

static const List<GetCreditNotesPreviewLinesTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCreditNotesPreviewLinesTaxAmountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCreditNotesPreviewLinesTaxAmountsVariant2($value)'; } 
 }

@immutable
final class GetCreditNotesPreviewLinesTaxAmounts {
  const GetCreditNotesPreviewLinesTaxAmounts({this.listGetCreditNotesPreviewLinesTaxAmountsVariant1 = const Omittable.absent(),
this.getCreditNotesPreviewLinesTaxAmountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCreditNotesPreviewLinesTaxAmounts._({required this.rawValue, required this.listGetCreditNotesPreviewLinesTaxAmountsVariant1,
required this.getCreditNotesPreviewLinesTaxAmountsVariant2,});
  factory GetCreditNotesPreviewLinesTaxAmounts.fromJson(Object? json) => GetCreditNotesPreviewLinesTaxAmounts._(
    rawValue: Omittable(json),
    listGetCreditNotesPreviewLinesTaxAmountsVariant1: parseAnyOfVariant<List<GetCreditNotesPreviewLinesTaxAmountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => GetCreditNotesPreviewLinesTaxAmountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
getCreditNotesPreviewLinesTaxAmountsVariant2: parseAnyOfVariant<GetCreditNotesPreviewLinesTaxAmountsVariant2>(json, (value) => GetCreditNotesPreviewLinesTaxAmountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<GetCreditNotesPreviewLinesTaxAmountsVariant1>> listGetCreditNotesPreviewLinesTaxAmountsVariant1;
final Omittable<GetCreditNotesPreviewLinesTaxAmountsVariant2> getCreditNotesPreviewLinesTaxAmountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listGetCreditNotesPreviewLinesTaxAmountsVariant1.isPresent || getCreditNotesPreviewLinesTaxAmountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listGetCreditNotesPreviewLinesTaxAmountsVariant1.isPresent) listGetCreditNotesPreviewLinesTaxAmountsVariant1.value?.map((e) => e.toJson()).toList(),
if (getCreditNotesPreviewLinesTaxAmountsVariant2.isPresent) getCreditNotesPreviewLinesTaxAmountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCreditNotesPreviewLinesTaxAmounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCreditNotesPreviewLinesTaxAmounts(${toJson()})';
}
