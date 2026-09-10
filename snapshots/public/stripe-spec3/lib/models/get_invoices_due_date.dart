// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs21.dart';
@immutable
final class GetInvoicesDueDate {
  const GetInvoicesDueDate({this.rangeQuerySpecs21 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetInvoicesDueDate._({required this.rawValue, required this.rangeQuerySpecs21,
required this.$int,});
  factory GetInvoicesDueDate.fromJson(Object? json) => GetInvoicesDueDate._(
    rawValue: Omittable(json),
    rangeQuerySpecs21: parseAnyOfVariant<RangeQuerySpecs21>(json, (value) => RangeQuerySpecs21.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs21> rangeQuerySpecs21;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs21.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs21.isPresent) rangeQuerySpecs21.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetInvoicesDueDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetInvoicesDueDate(${toJson()})';
}
