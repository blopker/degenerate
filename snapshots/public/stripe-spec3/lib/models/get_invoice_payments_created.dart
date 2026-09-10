// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs18.dart';
@immutable
final class GetInvoicePaymentsCreated {
  const GetInvoicePaymentsCreated({this.rangeQuerySpecs18 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetInvoicePaymentsCreated._({required this.rawValue, required this.rangeQuerySpecs18,
required this.$int,});
  factory GetInvoicePaymentsCreated.fromJson(Object? json) => GetInvoicePaymentsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs18: parseAnyOfVariant<RangeQuerySpecs18>(json, (value) => RangeQuerySpecs18.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs18> rangeQuerySpecs18;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs18.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs18.isPresent) rangeQuerySpecs18.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetInvoicePaymentsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetInvoicePaymentsCreated(${toJson()})';
}
